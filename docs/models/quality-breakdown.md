# QualityBreakdown

## Example Usage

```typescript
import { QualityBreakdown } from "@cactus-labs/tracearr-sdk/models";

let value: QualityBreakdown = {
  directPlay: 234,
  directStream: 56,
  transcode: 120,
  total: 410,
  directPlayPercent: 57,
  directStreamPercent: 14,
  transcodePercent: 29,
};
```

## Fields

| Field                 | Type                  | Required              | Description           | Example               |
| --------------------- | --------------------- | --------------------- | --------------------- | --------------------- |
| `directPlay`          | *number*              | :heavy_check_mark:    | N/A                   | 234                   |
| `directStream`        | *number*              | :heavy_check_mark:    | N/A                   | 56                    |
| `transcode`           | *number*              | :heavy_check_mark:    | N/A                   | 120                   |
| `total`               | *number*              | :heavy_check_mark:    | N/A                   | 410                   |
| `directPlayPercent`   | *number*              | :heavy_check_mark:    | Rounded percentage    | 57                    |
| `directStreamPercent` | *number*              | :heavy_check_mark:    | N/A                   | 14                    |
| `transcodePercent`    | *number*              | :heavy_check_mark:    | N/A                   | 29                    |