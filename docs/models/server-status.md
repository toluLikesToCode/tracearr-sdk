# ServerStatus

## Example Usage

```typescript
import { ServerStatus } from "tracearr-sdk/models";

let value: ServerStatus = {
  id: "d6afd92b-4757-463d-85d5-b81d79c31466",
  name: "Main Plex Server",
  type: "emby",
  online: false,
  activeStreams: 3,
};
```

## Fields

| Field                            | Type                             | Required                         | Description                      | Example                          |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `id`                             | *string*                         | :heavy_check_mark:               | N/A                              |                                  |
| `name`                           | *string*                         | :heavy_check_mark:               | N/A                              | Main Plex Server                 |
| `type`                           | [models.Type](../models/type.md) | :heavy_check_mark:               | N/A                              |                                  |
| `online`                         | *boolean*                        | :heavy_check_mark:               | N/A                              |                                  |
| `activeStreams`                  | *number*                         | :heavy_check_mark:               | N/A                              | 3                                |