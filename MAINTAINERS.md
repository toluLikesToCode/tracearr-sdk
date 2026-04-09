# Maintainers

This repository is generated with Speakeasy and published as the npm package
`@cactus-labs/tracearr-sdk`.

## Required GitHub Secrets

- `SPEAKEASY_API_KEY`: required for the `Generate` workflow
- `NPM_TOKEN`: required for the npm publish workflow

## Required GitHub Settings

- Actions permissions: workflow token defaults to `Read and write permissions`
- Actions setting: `Allow GitHub Actions to create and approve pull requests`

## Refresh the Tracearr Spec

Use your Tracearr public API token to fetch the current OpenAPI document and
rewrite the SDK server default to a safe placeholder:

```bash
TRACEARR_BASE_URL='https://your-tracearr.example.com' \
TRACEARR_TOKEN='trr_pub_...' \
TRACEARR_SERVER_URL='https://your-tracearr.example.com' \
npm run refresh:spec
```

Notes:

- `TRACEARR_BASE_URL` is where the spec is fetched from.
- `TRACEARR_SERVER_URL` is what gets baked into the generated SDK examples and
  defaults. Keep this generic for a public package.

## Generate Locally

```bash
speakeasy run --auto-yes --output console
npm run lint
npm run build
```

## Validate the Speakeasy PR Path

Run one forced generation from GitHub:

```bash
gh workflow run sdk_generation.yaml --ref main -f force=true
```

Then inspect the resulting PR and either merge it intentionally or close it if
it only contains forced-generation churn.

## Release to npm

1. Confirm the generated version in `package.json`.
2. Commit and push `main`.
3. Create and push a matching tag:

```bash
git tag "v$(node -p "require('./package.json').version")"
git push origin --tags
```

4. Create a GitHub Release from that tag.
5. The `Publish npm Package` workflow will publish `@cactus-labs/tracearr-sdk`.

The publish workflow rejects releases whose tag does not match the version in
`package.json`.
