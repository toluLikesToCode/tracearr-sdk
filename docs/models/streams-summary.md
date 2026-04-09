# StreamsSummary

## Example Usage

```typescript
import { StreamsSummary } from "tracearr-sdk/models";

let value: StreamsSummary = {
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
};
```

## Fields

| Field                                                              | Type                                                               | Required                                                           | Description                                                        | Example                                                            |
| ------------------------------------------------------------------ | ------------------------------------------------------------------ | ------------------------------------------------------------------ | ------------------------------------------------------------------ | ------------------------------------------------------------------ |
| `total`                                                            | *number*                                                           | :heavy_check_mark:                                                 | N/A                                                                | 5                                                                  |
| `transcodes`                                                       | *number*                                                           | :heavy_check_mark:                                                 | N/A                                                                | 2                                                                  |
| `directStreams`                                                    | *number*                                                           | :heavy_check_mark:                                                 | N/A                                                                | 1                                                                  |
| `directPlays`                                                      | *number*                                                           | :heavy_check_mark:                                                 | N/A                                                                | 2                                                                  |
| `totalBitrate`                                                     | *string*                                                           | :heavy_check_mark:                                                 | N/A                                                                | 45.2 Mbps                                                          |
| `byServer`                                                         | [models.ServerStreamSummary](../models/server-stream-summary.md)[] | :heavy_check_mark:                                                 | N/A                                                                |                                                                    |