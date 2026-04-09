# UsersResponse

## Example Usage

```typescript
import { UsersResponse } from "@cactus-labs/tracearr-sdk/models";

let value: UsersResponse = {
  data: [],
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
| `data`                                                | [models.User](../models/user.md)[]                    | :heavy_check_mark:                                    | N/A                                                   |
| `meta`                                                | [models.PaginationMeta](../models/pagination-meta.md) | :heavy_check_mark:                                    | N/A                                                   |