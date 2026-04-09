# TranscodeInfo

## Example Usage

```typescript
import { TranscodeInfo } from "@tolulikestocode/tracearr-sdk/models";

let value: TranscodeInfo = {
  sourceContainer: "mkv",
  streamContainer: "mpegts",
  hwDecoding: "videotoolbox",
  hwEncoding: "videotoolbox",
  speed: 2.5,
};
```

## Fields

| Field                                                       | Type                                                        | Required                                                    | Description                                                 | Example                                                     |
| ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- |
| `containerDecision`                                         | [models.ContainerDecision](../models/container-decision.md) | :heavy_minus_sign:                                          | N/A                                                         |                                                             |
| `sourceContainer`                                           | *string*                                                    | :heavy_minus_sign:                                          | N/A                                                         | mkv                                                         |
| `streamContainer`                                           | *string*                                                    | :heavy_minus_sign:                                          | N/A                                                         | mpegts                                                      |
| `hwRequested`                                               | *boolean*                                                   | :heavy_minus_sign:                                          | N/A                                                         |                                                             |
| `hwDecoding`                                                | *string*                                                    | :heavy_minus_sign:                                          | N/A                                                         | videotoolbox                                                |
| `hwEncoding`                                                | *string*                                                    | :heavy_minus_sign:                                          | N/A                                                         | videotoolbox                                                |
| `speed`                                                     | *number*                                                    | :heavy_minus_sign:                                          | Transcode speed multiplier                                  | 2.5                                                         |
| `throttled`                                                 | *boolean*                                                   | :heavy_minus_sign:                                          | N/A                                                         |                                                             |
| `reasons`                                                   | *string*[]                                                  | :heavy_minus_sign:                                          | N/A                                                         |                                                             |