# HealthResponse

## Example Usage

```typescript
import { HealthResponse } from "@tolulikestocode/tracearr-sdk/models";

let value: HealthResponse = {
  status: "ok",
  version: "1.4.22",
  timestamp: new Date("2024-01-15T12:00:00.000Z"),
  servers: [
    {
      id: "2cdaf972-d47f-484c-a89f-df5300adeb08",
      name: "Main Plex Server",
      type: "jellyfin",
      online: false,
      activeStreams: 3,
    },
  ],
};
```

## Fields

| Field                                                                                         | Type                                                                                          | Required                                                                                      | Description                                                                                   | Example                                                                                       |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `status`                                                                                      | [models.Status](../models/status.md)                                                          | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `version`                                                                                     | *string*                                                                                      | :heavy_check_mark:                                                                            | Tracearr server version                                                                       | 1.4.22                                                                                        |
| `timestamp`                                                                                   | [Date](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date) | :heavy_check_mark:                                                                            | N/A                                                                                           | 2024-01-15T12:00:00.000Z                                                                      |
| `servers`                                                                                     | [models.ServerStatus](../models/server-status.md)[]                                           | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |