# User

## Example Usage

```typescript
import { User } from "@tolulikestocode/tracearr-sdk/models";

let value: User = {
  id: "8278cd6d-5c46-4241-8e6b-6dbe6a106155",
  username: "john_doe",
  displayName: "John Doe",
  thumbUrl: "https://miserly-obedience.net",
  avatarUrl: "https://actual-legend.com",
  role: "member",
  trustScore: 95,
  totalViolations: 2,
  serverId: "bb98ce28-07f2-4bf9-8896-91dce4a9aa88",
  serverName: "Main Plex Server",
  lastActivityAt: new Date("2025-01-05T02:21:43.845Z"),
  sessionCount: 147,
  createdAt: new Date("2025-07-04T05:46:29.392Z"),
};
```

## Fields

| Field                                                                                         | Type                                                                                          | Required                                                                                      | Description                                                                                   | Example                                                                                       |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `id`                                                                                          | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `username`                                                                                    | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           | john_doe                                                                                      |
| `displayName`                                                                                 | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           | John Doe                                                                                      |
| `thumbUrl`                                                                                    | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `avatarUrl`                                                                                   | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `role`                                                                                        | [models.Role](../models/role.md)                                                              | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `trustScore`                                                                                  | *number*                                                                                      | :heavy_check_mark:                                                                            | 0-100                                                                                         | 95                                                                                            |
| `totalViolations`                                                                             | *number*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           | 2                                                                                             |
| `serverId`                                                                                    | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `serverName`                                                                                  | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           | Main Plex Server                                                                              |
| `lastActivityAt`                                                                              | [Date](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date) | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `sessionCount`                                                                                | *number*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           | 147                                                                                           |
| `createdAt`                                                                                   | [Date](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date) | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |