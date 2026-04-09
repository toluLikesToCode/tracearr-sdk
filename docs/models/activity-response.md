# ActivityResponse

## Example Usage

```typescript
import { ActivityResponse } from "tracearr-sdk/models";

let value: ActivityResponse = {
  period: "month",
  range: {
    start: new Date("2026-02-08T05:00:00.000Z"),
    end: new Date("2026-03-10T14:30:00.000Z"),
  },
  plays: [],
  concurrent: [
    {
      date: "2026-02-08 00:00:00",
      total: 7,
      direct: 4,
      directStream: 1,
      transcode: 2,
    },
  ],
  byDayOfWeek: [
    {
      day: 5,
      name: "Fri",
      count: 120,
    },
  ],
  byHourOfDay: [
    {
      hour: 20,
      count: 35,
    },
  ],
  platforms: [],
  quality: {
    directPlay: 234,
    directStream: 56,
    transcode: 120,
    total: 410,
    directPlayPercent: 57,
    directStreamPercent: 14,
    transcodePercent: 29,
  },
};
```

## Fields

| Field                                                                                                                            | Type                                                                                                                             | Required                                                                                                                         | Description                                                                                                                      |
| -------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------- |
| `period`                                                                                                                         | [models.Period](../models/period.md)                                                                                             | :heavy_check_mark:                                                                                                               | N/A                                                                                                                              |
| `range`                                                                                                                          | [models.Range](../models/range.md)                                                                                               | :heavy_check_mark:                                                                                                               | N/A                                                                                                                              |
| `plays`                                                                                                                          | [models.Play](../models/play.md)[]                                                                                               | :heavy_check_mark:                                                                                                               | Play counts bucketed over time. Engagement-based: only sessions >= 2 min. Bucket size is 6 hours for week, 1 day for month/year. |
| `concurrent`                                                                                                                     | [models.Concurrent](../models/concurrent.md)[]                                                                                   | :heavy_check_mark:                                                                                                               | Peak concurrent streams per time bucket, broken down by playback type.                                                           |
| `byDayOfWeek`                                                                                                                    | [models.ByDayOfWeek](../models/by-day-of-week.md)[]                                                                              | :heavy_check_mark:                                                                                                               | Play distribution across days of the week. Always 7 entries.                                                                     |
| `byHourOfDay`                                                                                                                    | [models.ByHourOfDay](../models/by-hour-of-day.md)[]                                                                              | :heavy_check_mark:                                                                                                               | Play distribution across hours of the day. Always 24 entries.                                                                    |
| `platforms`                                                                                                                      | [models.Platform](../models/platform.md)[]                                                                                       | :heavy_check_mark:                                                                                                               | Session counts by client platform, sorted by count descending.                                                                   |
| `quality`                                                                                                                        | [models.QualityBreakdown](../models/quality-breakdown.md)                                                                        | :heavy_check_mark:                                                                                                               | N/A                                                                                                                              |