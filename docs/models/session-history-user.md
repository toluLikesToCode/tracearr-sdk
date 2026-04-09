# SessionHistoryUser

## Example Usage

```typescript
import { SessionHistoryUser } from "@tolulikestocode/tracearr-sdk/models";

let value: SessionHistoryUser = {
  id: "ca13d5d5-3e4f-449b-af56-5528ee7fed8b",
  username: "john_doe",
  thumbUrl: "https://lucky-event.biz/",
  avatarUrl: "https://amazing-labourer.info",
};
```

## Fields

| Field                         | Type                          | Required                      | Description                   | Example                       |
| ----------------------------- | ----------------------------- | ----------------------------- | ----------------------------- | ----------------------------- |
| `id`                          | *string*                      | :heavy_check_mark:            | N/A                           |                               |
| `username`                    | *string*                      | :heavy_check_mark:            | N/A                           | john_doe                      |
| `thumbUrl`                    | *string*                      | :heavy_check_mark:            | Avatar path from media server |                               |
| `avatarUrl`                   | *string*                      | :heavy_check_mark:            | Proxied avatar URL            |                               |