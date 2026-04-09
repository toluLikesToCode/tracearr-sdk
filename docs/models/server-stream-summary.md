# ServerStreamSummary

## Example Usage

```typescript
import { ServerStreamSummary } from "@tolulikestocode/tracearr-sdk/models";

let value: ServerStreamSummary = {
  serverId: "6947a5e0-288f-4007-bb85-15a667520c29",
  serverName: "Main Plex Server",
  total: 3,
  transcodes: 1,
  directStreams: 1,
  directPlays: 1,
  totalBitrate: "22.5 Mbps",
};
```

## Fields

| Field              | Type               | Required           | Description        | Example            |
| ------------------ | ------------------ | ------------------ | ------------------ | ------------------ |
| `serverId`         | *string*           | :heavy_check_mark: | N/A                |                    |
| `serverName`       | *string*           | :heavy_check_mark: | N/A                | Main Plex Server   |
| `total`            | *number*           | :heavy_check_mark: | N/A                | 3                  |
| `transcodes`       | *number*           | :heavy_check_mark: | N/A                | 1                  |
| `directStreams`    | *number*           | :heavy_check_mark: | N/A                | 1                  |
| `directPlays`      | *number*           | :heavy_check_mark: | N/A                | 1                  |
| `totalBitrate`     | *string*           | :heavy_check_mark: | N/A                | 22.5 Mbps          |