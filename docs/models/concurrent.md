# Concurrent

## Example Usage

```typescript
import { Concurrent } from "@tolulikestocode/tracearr-sdk/models";

let value: Concurrent = {
  date: "2026-02-08 00:00:00",
  total: 7,
  direct: 4,
  directStream: 1,
  transcode: 2,
};
```

## Fields

| Field                 | Type                  | Required              | Description           | Example               |
| --------------------- | --------------------- | --------------------- | --------------------- | --------------------- |
| `date`                | *string*              | :heavy_check_mark:    | Bucket start time     | 2026-02-08 00:00:00   |
| `total`               | *number*              | :heavy_check_mark:    | N/A                   | 7                     |
| `direct`              | *number*              | :heavy_check_mark:    | Direct play streams   | 4                     |
| `directStream`        | *number*              | :heavy_check_mark:    | Direct stream (remux) | 1                     |
| `transcode`           | *number*              | :heavy_check_mark:    | N/A                   | 2                     |