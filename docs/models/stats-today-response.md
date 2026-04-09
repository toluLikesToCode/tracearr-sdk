# StatsTodayResponse

## Example Usage

```typescript
import { StatsTodayResponse } from "@cactus-labs/tracearr-sdk/models";

let value: StatsTodayResponse = {
  activeStreams: 5,
  todayPlays: 47,
  watchTimeHours: 12.5,
  alertsLast24h: 3,
  activeUsersToday: 8,
  timestamp: new Date("2025-08-03T10:37:35.890Z"),
};
```

## Fields

| Field                                                                                         | Type                                                                                          | Required                                                                                      | Description                                                                                   | Example                                                                                       |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `activeStreams`                                                                               | *number*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           | 5                                                                                             |
| `todayPlays`                                                                                  | *number*                                                                                      | :heavy_check_mark:                                                                            | Validated plays (>= 2 min)                                                                    | 47                                                                                            |
| `watchTimeHours`                                                                              | *number*                                                                                      | :heavy_check_mark:                                                                            | Hours watched today                                                                           | 12.5                                                                                          |
| `alertsLast24h`                                                                               | *number*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           | 3                                                                                             |
| `activeUsersToday`                                                                            | *number*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           | 8                                                                                             |
| `timestamp`                                                                                   | [Date](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date) | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |