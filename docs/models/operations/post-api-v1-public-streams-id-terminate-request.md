# PostApiV1PublicStreamsIdTerminateRequest

## Example Usage

```typescript
import { PostApiV1PublicStreamsIdTerminateRequest } from "@cactus-labs/tracearr-sdk/models/operations";

let value: PostApiV1PublicStreamsIdTerminateRequest = {
  id: "ae228876-26c8-4d22-9205-759098ca0e4c",
};
```

## Fields

| Field                                                               | Type                                                                | Required                                                            | Description                                                         |
| ------------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- |
| `id`                                                                | *string*                                                            | :heavy_check_mark:                                                  | Session ID from /streams                                            |
| `body`                                                              | [models.TerminateStreamBody](../../models/terminate-stream-body.md) | :heavy_minus_sign:                                                  | N/A                                                                 |