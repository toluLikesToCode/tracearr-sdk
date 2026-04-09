# StreamsSummaryOnlyResponse

## Example Usage

```typescript
import { StreamsSummaryOnlyResponse } from "@cactus-labs/tracearr-sdk/models";

let value: StreamsSummaryOnlyResponse = {
  summary: {
    total: 5,
    transcodes: 2,
    directStreams: 1,
    directPlays: 2,
    totalBitrate: "45.2 Mbps",
    byServer: [
      {
        serverId: "a72ec93a-9aa7-4f59-a1d3-cc8b4521cdce",
        serverName: "Main Plex Server",
        total: 3,
        transcodes: 1,
        directStreams: 1,
        directPlays: 1,
        totalBitrate: "22.5 Mbps",
      },
    ],
  },
};
```

## Fields

| Field                                                 | Type                                                  | Required                                              | Description                                           |
| ----------------------------------------------------- | ----------------------------------------------------- | ----------------------------------------------------- | ----------------------------------------------------- |
| `summary`                                             | [models.StreamsSummary](../models/streams-summary.md) | :heavy_check_mark:                                    | N/A                                                   |