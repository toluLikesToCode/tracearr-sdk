# ByDayOfWeek

## Example Usage

```typescript
import { ByDayOfWeek } from "@tolulikestocode/tracearr-sdk/models";

let value: ByDayOfWeek = {
  day: 5,
  name: "Fri",
  count: 120,
};
```

## Fields

| Field                    | Type                     | Required                 | Description              | Example                  |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ |
| `day`                    | *number*                 | :heavy_check_mark:       | 0 = Sunday, 6 = Saturday | 5                        |
| `name`                   | *string*                 | :heavy_check_mark:       | N/A                      | Fri                      |
| `count`                  | *number*                 | :heavy_check_mark:       | N/A                      | 120                      |