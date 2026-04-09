# ViolationsResponse

## Example Usage

```typescript
import { ViolationsResponse } from "@tolulikestocode/tracearr-sdk/models";

let value: ViolationsResponse = {
  data: [
    {
      id: "599f4b9e-b0b4-41cc-a586-39d1ce633b6a",
      serverId: "902354d8-a1f2-4bbc-ad1d-ed609059e94d",
      serverName: "Main Plex Server",
      severity: "high",
      acknowledged: false,
      data: {},
      createdAt: new Date("2024-11-10T08:38:25.721Z"),
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
    },
  ],
  meta: {
    total: 42,
    page: 1,
    pageSize: 25,
  },
};
```

## Fields

| Field                                                 | Type                                                  | Required                                              | Description                                           |
| ----------------------------------------------------- | ----------------------------------------------------- | ----------------------------------------------------- | ----------------------------------------------------- |
| `data`                                                | [models.Violation](../models/violation.md)[]          | :heavy_check_mark:                                    | N/A                                                   |
| `meta`                                                | [models.PaginationMeta](../models/pagination-meta.md) | :heavy_check_mark:                                    | N/A                                                   |