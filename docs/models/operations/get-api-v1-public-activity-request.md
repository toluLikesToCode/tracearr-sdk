# GetApiV1PublicActivityRequest

## Example Usage

```typescript
import { GetApiV1PublicActivityRequest } from "@cactus-labs/tracearr-sdk/models/operations";

let value: GetApiV1PublicActivityRequest = {
  serverId: "550e8400-e29b-41d4-a716-446655440000",
  timezone: "America/New_York",
};
```

## Fields

| Field                                                  | Type                                                   | Required                                               | Description                                            | Example                                                |
| ------------------------------------------------------ | ------------------------------------------------------ | ------------------------------------------------------ | ------------------------------------------------------ | ------------------------------------------------------ |
| `period`                                               | [operations.Period](../../models/operations/period.md) | :heavy_minus_sign:                                     | Time range for activity data                           | month                                                  |
| `serverId`                                             | *string*                                               | :heavy_minus_sign:                                     | Filter by server                                       | 550e8400-e29b-41d4-a716-446655440000                   |
| `timezone`                                             | *string*                                               | :heavy_minus_sign:                                     | IANA timezone for date bucketing                       | America/New_York                                       |