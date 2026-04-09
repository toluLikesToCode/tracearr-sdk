<!-- Start SDK Example Usage [usage] -->
```typescript
import { TracearrSDK } from "@tolulikestocode/tracearr-sdk";

const tracearrSDK = new TracearrSDK({
  bearerAuth: process.env["TRACEARRSDK_BEARER_AUTH"] ?? "",
});

async function run() {
  const result = await tracearrSDK.publicAPI.getApiV1PublicHealth();

  console.log(result);
}

run();

```
<!-- End SDK Example Usage [usage] -->