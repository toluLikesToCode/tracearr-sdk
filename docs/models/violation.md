# Violation

## Example Usage

```typescript
import { Violation } from "tracearr-sdk/models";

let value: Violation = {
  id: "2127b3f8-5631-4a7d-b27f-45f5b36b25d6",
  serverId: "d793fbe8-a945-49ee-9b98-fbeaae6e13e8",
  serverName: "Main Plex Server",
  severity: "low",
  acknowledged: false,
  data: {},
  createdAt: new Date("2024-02-08T19:55:25.212Z"),
  rule: {
    id: "bc6c2579-9e75-4624-b264-e3d98f7abc0a",
    type: "concurrent_streams",
    name: "Max 2 concurrent streams",
  },
  user: {
    id: "bcc64636-a0ff-47dc-ae47-5c5e8a18679d",
    username: "john_doe",
    thumbUrl: "https://crooked-silk.info",
    avatarUrl: "https://ornery-validity.info",
  },
};
```

## Fields

| Field                                                                                         | Type                                                                                          | Required                                                                                      | Description                                                                                   | Example                                                                                       |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `id`                                                                                          | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `serverId`                                                                                    | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `serverName`                                                                                  | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           | Main Plex Server                                                                              |
| `severity`                                                                                    | [models.Severity](../models/severity.md)                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `acknowledged`                                                                                | *boolean*                                                                                     | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `data`                                                                                        | Record<string, *any*>                                                                         | :heavy_check_mark:                                                                            | Rule-specific violation data                                                                  |                                                                                               |
| `createdAt`                                                                                   | [Date](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date) | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `rule`                                                                                        | [models.Rule](../models/rule.md)                                                              | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `user`                                                                                        | [models.ViolationUser](../models/violation-user.md)                                           | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |