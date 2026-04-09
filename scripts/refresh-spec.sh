#!/usr/bin/env bash

set -euo pipefail

if [[ -z "${TRACEARR_BASE_URL:-}" ]]; then
  echo "TRACEARR_BASE_URL is required, for example: https://tracearr.jactus.net" >&2
  exit 1
fi

if [[ -z "${TRACEARR_TOKEN:-}" ]]; then
  echo "TRACEARR_TOKEN is required." >&2
  exit 1
fi

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SPEC_PATH="$ROOT_DIR/tracearr-openapi.json"
TMP_SPEC="$(mktemp)"

cleanup() {
  rm -f "$TMP_SPEC"
}

trap cleanup EXIT

curl -fsSL \
  -H "Authorization: Bearer $TRACEARR_TOKEN" \
  "$TRACEARR_BASE_URL/api/v1/public/docs" > "$TMP_SPEC"

jq \
  --arg server_url "$TRACEARR_BASE_URL" \
  '
    .servers = [{"url": $server_url}] |
    (.paths |= with_entries(
      .value |= with_entries(
        if (.value.parameters? != null) then
          .value.parameters |= map(
            if .name == "serverId" and .in == "query" then
              .description = "Filter by server" |
              .schema |= del(.enum)
            else . end
          )
        else . end
      )
    ))
  ' \
  "$TMP_SPEC" > "$SPEC_PATH"

echo "Wrote sanitized OpenAPI spec to $SPEC_PATH"
