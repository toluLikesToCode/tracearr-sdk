# ViolationUser

## Example Usage

```typescript
import { ViolationUser } from "@cactus-labs/tracearr-sdk/models";

let value: ViolationUser = {
  id: "2eaa23a1-9957-47a6-810a-0b00161ba0cf",
  username: "john_doe",
  thumbUrl: null,
  avatarUrl: "https://jagged-account.info/",
};
```

## Fields

| Field                         | Type                          | Required                      | Description                   | Example                       |
| ----------------------------- | ----------------------------- | ----------------------------- | ----------------------------- | ----------------------------- |
| `id`                          | *string*                      | :heavy_check_mark:            | N/A                           |                               |
| `username`                    | *string*                      | :heavy_check_mark:            | N/A                           | john_doe                      |
| `thumbUrl`                    | *string*                      | :heavy_check_mark:            | Avatar path from media server |                               |
| `avatarUrl`                   | *string*                      | :heavy_check_mark:            | Proxied avatar URL            |                               |