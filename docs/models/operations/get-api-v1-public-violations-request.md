# GetApiV1PublicViolationsRequest

## Example Usage

```typescript
import { GetApiV1PublicViolationsRequest } from "@cactus-labs/tracearr-sdk/models/operations";

let value: GetApiV1PublicViolationsRequest = {
  serverId: "550e8400-e29b-41d4-a716-446655440000",
};
```

## Fields

| Field                                                      | Type                                                       | Required                                                   | Description                                                | Example                                                    |
| ---------------------------------------------------------- | ---------------------------------------------------------- | ---------------------------------------------------------- | ---------------------------------------------------------- | ---------------------------------------------------------- |
| `page`                                                     | *number*                                                   | :heavy_minus_sign:                                         | N/A                                                        | 1                                                          |
| `pageSize`                                                 | *number*                                                   | :heavy_minus_sign:                                         | N/A                                                        | 25                                                         |
| `serverId`                                                 | *string*                                                   | :heavy_minus_sign:                                         | Filter by server                                           | 550e8400-e29b-41d4-a716-446655440000                       |
| `severity`                                                 | [operations.Severity](../../models/operations/severity.md) | :heavy_minus_sign:                                         | N/A                                                        |                                                            |
| `acknowledged`                                             | *boolean*                                                  | :heavy_minus_sign:                                         | N/A                                                        |                                                            |