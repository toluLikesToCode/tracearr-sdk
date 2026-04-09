<!-- Start SDK Example Usage [usage] -->
```typescript
import { TracearrSDK } from "@tolulikestocode/tracearr-sdk";

const tracearrSDK = new TracearrSDK({
  serverURL: process.env["TRACEARR_BASE_URL"] ?? "https://your-tracearr.example.com",
  bearerAuth: process.env["TRACEARRSDK_BEARER_AUTH"] ?? "",
});

async function run() {
  const result = await tracearrSDK.publicAPI.getApiV1PublicHealth();

  console.log(result);
}

run();

```
<!-- End SDK Example Usage [usage] -->