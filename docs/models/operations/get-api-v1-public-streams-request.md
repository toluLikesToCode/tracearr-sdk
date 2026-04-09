# GetApiV1PublicStreamsRequest

## Example Usage

```typescript
import { GetApiV1PublicStreamsRequest } from "@tolulikestocode/tracearr-sdk/models/operations";

let value: GetApiV1PublicStreamsRequest = {
  serverId: "550e8400-e29b-41d4-a716-446655440000",
  summary: false,
};
```

## Fields

| Field                                 | Type                                  | Required                              | Description                           | Example                               |
| ------------------------------------- | ------------------------------------- | ------------------------------------- | ------------------------------------- | ------------------------------------- |
| `serverId`                            | *string*                              | :heavy_minus_sign:                    | Filter by server                      | 550e8400-e29b-41d4-a716-446655440000  |
| `summary`                             | *boolean*                             | :heavy_minus_sign:                    | Return only summary (omit data array) | false                                 |