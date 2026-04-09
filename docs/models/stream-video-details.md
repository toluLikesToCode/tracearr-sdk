# StreamVideoDetails

## Example Usage

```typescript
import { StreamVideoDetails } from "@cactus-labs/tracearr-sdk/models";

let value: StreamVideoDetails = {
  width: 1920,
  height: 1080,
  framerate: "23.976",
  dynamicRange: "SDR",
};
```

## Fields

| Field              | Type               | Required           | Description        | Example            |
| ------------------ | ------------------ | ------------------ | ------------------ | ------------------ |
| `bitrate`          | *number*           | :heavy_minus_sign: | N/A                |                    |
| `width`            | *number*           | :heavy_minus_sign: | N/A                | 1920               |
| `height`           | *number*           | :heavy_minus_sign: | N/A                | 1080               |
| `framerate`        | *string*           | :heavy_minus_sign: | N/A                | 23.976             |
| `dynamicRange`     | *string*           | :heavy_minus_sign: | N/A                | SDR                |