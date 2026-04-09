# StatsResponse

## Example Usage

```typescript
import { StatsResponse } from "tracearr-sdk/models";

let value: StatsResponse = {
  activeStreams: 5,
  totalUsers: 24,
  totalSessions: 1847,
  recentViolations: 3,
  timestamp: new Date("2025-03-28T10:13:55.589Z"),
};
```

## Fields

| Field                                                                                         | Type                                                                                          | Required                                                                                      | Description                                                                                   | Example                                                                                       |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `activeStreams`                                                                               | *number*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           | 5                                                                                             |
| `totalUsers`                                                                                  | *number*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           | 24                                                                                            |
| `totalSessions`                                                                               | *number*                                                                                      | :heavy_check_mark:                                                                            | Sessions in last 30 days                                                                      | 1847                                                                                          |
| `recentViolations`                                                                            | *number*                                                                                      | :heavy_check_mark:                                                                            | Violations in last 7 days                                                                     | 3                                                                                             |
| `timestamp`                                                                                   | [Date](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date) | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |