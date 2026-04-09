# SourceVideoDetails

## Example Usage

```typescript
import { SourceVideoDetails } from "tracearr-sdk/models";

let value: SourceVideoDetails = {
  framerate: "23.976",
  dynamicRange: "HDR10",
  aspectRatio: 1.78,
  profile: "main 10",
  level: "5.1",
  colorSpace: "bt2020nc",
  colorDepth: 10,
};
```

## Fields

| Field              | Type               | Required           | Description        | Example            |
| ------------------ | ------------------ | ------------------ | ------------------ | ------------------ |
| `bitrate`          | *number*           | :heavy_minus_sign: | N/A                |                    |
| `framerate`        | *string*           | :heavy_minus_sign: | N/A                | 23.976             |
| `dynamicRange`     | *string*           | :heavy_minus_sign: | N/A                | HDR10              |
| `aspectRatio`      | *number*           | :heavy_minus_sign: | N/A                | 1.78               |
| `profile`          | *string*           | :heavy_minus_sign: | N/A                | main 10            |
| `level`            | *string*           | :heavy_minus_sign: | N/A                | 5.1                |
| `colorSpace`       | *string*           | :heavy_minus_sign: | N/A                | bt2020nc           |
| `colorDepth`       | *number*           | :heavy_minus_sign: | N/A                | 10                 |