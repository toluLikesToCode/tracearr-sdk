# GetApiV1PublicStatsTodayRequest

## Example Usage

```typescript
import { GetApiV1PublicStatsTodayRequest } from "@tolulikestocode/tracearr-sdk/models/operations";

let value: GetApiV1PublicStatsTodayRequest = {
  serverId: "550e8400-e29b-41d4-a716-446655440000",
  timezone: "America/New_York",
};
```

## Fields

| Field                                 | Type                                  | Required                              | Description                           | Example                               |
| ------------------------------------- | ------------------------------------- | ------------------------------------- | ------------------------------------- | ------------------------------------- |
| `serverId`                            | *string*                              | :heavy_minus_sign:                    | Filter by server                      | 550e8400-e29b-41d4-a716-446655440000  |
| `timezone`                            | *string*                              | :heavy_minus_sign:                    | IANA timezone for "today" calculation | America/New_York                      |