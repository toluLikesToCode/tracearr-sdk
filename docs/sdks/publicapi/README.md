# PublicAPI

## Overview

### Available Operations

* [getApiV1PublicHealth](#getapiv1publichealth) - Check server connectivity
* [getApiV1PublicStats](#getapiv1publicstats) - Dashboard statistics
* [getApiV1PublicStatsToday](#getapiv1publicstatstoday) - Today's dashboard statistics
* [getApiV1PublicActivity](#getapiv1publicactivity) - Playback activity trends
* [getApiV1PublicStreams](#getapiv1publicstreams) - Active playback sessions
* [postApiV1PublicStreamsIdTerminate](#postapiv1publicstreamsidterminate) - Terminate active stream
* [getApiV1PublicUsers](#getapiv1publicusers) - User list with activity metrics
* [getApiV1PublicViolations](#getapiv1publicviolations) - Rule violations
* [getApiV1PublicHistory](#getapiv1publichistory) - Session history

## getApiV1PublicHealth

Returns connection status for all configured media servers.

### Example Usage

<!-- UsageSnippet language="typescript" operationID="get_/api/v1/public/health" method="get" path="/api/v1/public/health" -->
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

### Standalone function

The standalone function version of this method:

```typescript
import { TracearrSDKCore } from "@tolulikestocode/tracearr-sdk/core.js";
import { publicAPIGetAPIV1PublicHealth } from "@tolulikestocode/tracearr-sdk/funcs/public-api-get-apiv1-public-health.js";

// Use `TracearrSDKCore` for best tree-shaking performance.
// You can create one instance of it to use across an application.
const tracearrSDK = new TracearrSDKCore({
  bearerAuth: process.env["TRACEARRSDK_BEARER_AUTH"] ?? "",
});

async function run() {
  const res = await publicAPIGetAPIV1PublicHealth(tracearrSDK);
  if (res.ok) {
    const { value: result } = res;
    console.log(result);
  } else {
    console.log("publicAPIGetAPIV1PublicHealth failed:", res.error);
  }
}

run();
```

### Parameters

| Parameter                                                                                                                                                                      | Type                                                                                                                                                                           | Required                                                                                                                                                                       | Description                                                                                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `options`                                                                                                                                                                      | RequestOptions                                                                                                                                                                 | :heavy_minus_sign:                                                                                                                                                             | Used to set various options for making HTTP requests.                                                                                                                          |
| `options.fetchOptions`                                                                                                                                                         | [RequestInit](https://developer.mozilla.org/en-US/docs/Web/API/Request/Request#options)                                                                                        | :heavy_minus_sign:                                                                                                                                                             | Options that are passed to the underlying HTTP request. This can be used to inject extra headers for examples. All `Request` options, except `method` and `body`, are allowed. |
| `options.retries`                                                                                                                                                              | [RetryConfig](../../lib/utils/retryconfig.md)                                                                                                                                  | :heavy_minus_sign:                                                                                                                                                             | Enables retrying HTTP requests under certain failure conditions.                                                                                                               |

### Response

**Promise\<[models.HealthResponse](../../models/health-response.md)\>**

### Errors

| Error Type                     | Status Code                    | Content Type                   |
| ------------------------------ | ------------------------------ | ------------------------------ |
| errors.TracearrSDKDefaultError | 4XX, 5XX                       | \*/\*                          |

## getApiV1PublicStats

Aggregate counts for dashboard display. Optionally filter by server.

### Example Usage

<!-- UsageSnippet language="typescript" operationID="get_/api/v1/public/stats" method="get" path="/api/v1/public/stats" -->
```typescript
import { TracearrSDK } from "@tolulikestocode/tracearr-sdk";

const tracearrSDK = new TracearrSDK({
  bearerAuth: process.env["TRACEARRSDK_BEARER_AUTH"] ?? "",
});

async function run() {
  const result = await tracearrSDK.publicAPI.getApiV1PublicStats({
    serverId: "550e8400-e29b-41d4-a716-446655440000",
  });

  console.log(result);
}

run();
```

### Standalone function

The standalone function version of this method:

```typescript
import { TracearrSDKCore } from "@tolulikestocode/tracearr-sdk/core.js";
import { publicAPIGetAPIV1PublicStats } from "@tolulikestocode/tracearr-sdk/funcs/public-api-get-apiv1-public-stats.js";

// Use `TracearrSDKCore` for best tree-shaking performance.
// You can create one instance of it to use across an application.
const tracearrSDK = new TracearrSDKCore({
  bearerAuth: process.env["TRACEARRSDK_BEARER_AUTH"] ?? "",
});

async function run() {
  const res = await publicAPIGetAPIV1PublicStats(tracearrSDK, {
    serverId: "550e8400-e29b-41d4-a716-446655440000",
  });
  if (res.ok) {
    const { value: result } = res;
    console.log(result);
  } else {
    console.log("publicAPIGetAPIV1PublicStats failed:", res.error);
  }
}

run();
```

### Parameters

| Parameter                                                                                                                                                                      | Type                                                                                                                                                                           | Required                                                                                                                                                                       | Description                                                                                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `request`                                                                                                                                                                      | [operations.GetApiV1PublicStatsRequest](../../models/operations/get-api-v1-public-stats-request.md)                                                                            | :heavy_check_mark:                                                                                                                                                             | The request object to use for the request.                                                                                                                                     |
| `options`                                                                                                                                                                      | RequestOptions                                                                                                                                                                 | :heavy_minus_sign:                                                                                                                                                             | Used to set various options for making HTTP requests.                                                                                                                          |
| `options.fetchOptions`                                                                                                                                                         | [RequestInit](https://developer.mozilla.org/en-US/docs/Web/API/Request/Request#options)                                                                                        | :heavy_minus_sign:                                                                                                                                                             | Options that are passed to the underlying HTTP request. This can be used to inject extra headers for examples. All `Request` options, except `method` and `body`, are allowed. |
| `options.retries`                                                                                                                                                              | [RetryConfig](../../lib/utils/retryconfig.md)                                                                                                                                  | :heavy_minus_sign:                                                                                                                                                             | Enables retrying HTTP requests under certain failure conditions.                                                                                                               |

### Response

**Promise\<[models.StatsResponse](../../models/stats-response.md)\>**

### Errors

| Error Type                     | Status Code                    | Content Type                   |
| ------------------------------ | ------------------------------ | ------------------------------ |
| errors.TracearrSDKDefaultError | 4XX, 5XX                       | \*/\*                          |

## getApiV1PublicStatsToday

Dashboard metrics for "today" in the specified timezone. Includes active streams, validated plays (>= 2 min), watch time, alerts, and active users.

### Example Usage

<!-- UsageSnippet language="typescript" operationID="get_/api/v1/public/stats/today" method="get" path="/api/v1/public/stats/today" -->
```typescript
import { TracearrSDK } from "@tolulikestocode/tracearr-sdk";

const tracearrSDK = new TracearrSDK({
  bearerAuth: process.env["TRACEARRSDK_BEARER_AUTH"] ?? "",
});

async function run() {
  const result = await tracearrSDK.publicAPI.getApiV1PublicStatsToday({
    serverId: "550e8400-e29b-41d4-a716-446655440000",
    timezone: "America/New_York",
  });

  console.log(result);
}

run();
```

### Standalone function

The standalone function version of this method:

```typescript
import { TracearrSDKCore } from "@tolulikestocode/tracearr-sdk/core.js";
import { publicAPIGetAPIV1PublicStatsToday } from "@tolulikestocode/tracearr-sdk/funcs/public-api-get-apiv1-public-stats-today.js";

// Use `TracearrSDKCore` for best tree-shaking performance.
// You can create one instance of it to use across an application.
const tracearrSDK = new TracearrSDKCore({
  bearerAuth: process.env["TRACEARRSDK_BEARER_AUTH"] ?? "",
});

async function run() {
  const res = await publicAPIGetAPIV1PublicStatsToday(tracearrSDK, {
    serverId: "550e8400-e29b-41d4-a716-446655440000",
    timezone: "America/New_York",
  });
  if (res.ok) {
    const { value: result } = res;
    console.log(result);
  } else {
    console.log("publicAPIGetAPIV1PublicStatsToday failed:", res.error);
  }
}

run();
```

### Parameters

| Parameter                                                                                                                                                                      | Type                                                                                                                                                                           | Required                                                                                                                                                                       | Description                                                                                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `request`                                                                                                                                                                      | [operations.GetApiV1PublicStatsTodayRequest](../../models/operations/get-api-v1-public-stats-today-request.md)                                                                 | :heavy_check_mark:                                                                                                                                                             | The request object to use for the request.                                                                                                                                     |
| `options`                                                                                                                                                                      | RequestOptions                                                                                                                                                                 | :heavy_minus_sign:                                                                                                                                                             | Used to set various options for making HTTP requests.                                                                                                                          |
| `options.fetchOptions`                                                                                                                                                         | [RequestInit](https://developer.mozilla.org/en-US/docs/Web/API/Request/Request#options)                                                                                        | :heavy_minus_sign:                                                                                                                                                             | Options that are passed to the underlying HTTP request. This can be used to inject extra headers for examples. All `Request` options, except `method` and `body`, are allowed. |
| `options.retries`                                                                                                                                                              | [RetryConfig](../../lib/utils/retryconfig.md)                                                                                                                                  | :heavy_minus_sign:                                                                                                                                                             | Enables retrying HTTP requests under certain failure conditions.                                                                                                               |

### Response

**Promise\<[models.StatsTodayResponse](../../models/stats-today-response.md)\>**

### Errors

| Error Type                     | Status Code                    | Content Type                   |
| ------------------------------ | ------------------------------ | ------------------------------ |
| errors.TracearrSDKDefaultError | 4XX, 5XX                       | \*/\*                          |

## getApiV1PublicActivity

Consolidated activity data across six dimensions: plays over time, concurrent streams, day-of-week and hour-of-day distributions, platform usage, and playback quality. Time-series data is bucketed by 6 hours (week) or 1 day (month/year). Play counts use engagement-based filtering (sessions >= 2 minutes).

### Example Usage

<!-- UsageSnippet language="typescript" operationID="get_/api/v1/public/activity" method="get" path="/api/v1/public/activity" -->
```typescript
import { TracearrSDK } from "@tolulikestocode/tracearr-sdk";

const tracearrSDK = new TracearrSDK({
  bearerAuth: process.env["TRACEARRSDK_BEARER_AUTH"] ?? "",
});

async function run() {
  const result = await tracearrSDK.publicAPI.getApiV1PublicActivity({
    serverId: "550e8400-e29b-41d4-a716-446655440000",
    timezone: "America/New_York",
  });

  console.log(result);
}

run();
```

### Standalone function

The standalone function version of this method:

```typescript
import { TracearrSDKCore } from "@tolulikestocode/tracearr-sdk/core.js";
import { publicAPIGetAPIV1PublicActivity } from "@tolulikestocode/tracearr-sdk/funcs/public-api-get-apiv1-public-activity.js";

// Use `TracearrSDKCore` for best tree-shaking performance.
// You can create one instance of it to use across an application.
const tracearrSDK = new TracearrSDKCore({
  bearerAuth: process.env["TRACEARRSDK_BEARER_AUTH"] ?? "",
});

async function run() {
  const res = await publicAPIGetAPIV1PublicActivity(tracearrSDK, {
    serverId: "550e8400-e29b-41d4-a716-446655440000",
    timezone: "America/New_York",
  });
  if (res.ok) {
    const { value: result } = res;
    console.log(result);
  } else {
    console.log("publicAPIGetAPIV1PublicActivity failed:", res.error);
  }
}

run();
```

### Parameters

| Parameter                                                                                                                                                                      | Type                                                                                                                                                                           | Required                                                                                                                                                                       | Description                                                                                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `request`                                                                                                                                                                      | [operations.GetApiV1PublicActivityRequest](../../models/operations/get-api-v1-public-activity-request.md)                                                                      | :heavy_check_mark:                                                                                                                                                             | The request object to use for the request.                                                                                                                                     |
| `options`                                                                                                                                                                      | RequestOptions                                                                                                                                                                 | :heavy_minus_sign:                                                                                                                                                             | Used to set various options for making HTTP requests.                                                                                                                          |
| `options.fetchOptions`                                                                                                                                                         | [RequestInit](https://developer.mozilla.org/en-US/docs/Web/API/Request/Request#options)                                                                                        | :heavy_minus_sign:                                                                                                                                                             | Options that are passed to the underlying HTTP request. This can be used to inject extra headers for examples. All `Request` options, except `method` and `body`, are allowed. |
| `options.retries`                                                                                                                                                              | [RetryConfig](../../lib/utils/retryconfig.md)                                                                                                                                  | :heavy_minus_sign:                                                                                                                                                             | Enables retrying HTTP requests under certain failure conditions.                                                                                                               |

### Response

**Promise\<[models.ActivityResponse](../../models/activity-response.md)\>**

### Errors

| Error Type                     | Status Code                    | Content Type                   |
| ------------------------------ | ------------------------------ | ------------------------------ |
| errors.TracearrSDKDefaultError | 4XX, 5XX                       | \*/\*                          |

## getApiV1PublicStreams

Real-time active streams with codec and quality details. Use summary=true for lightweight dashboard polling (omits data array).

### Example Usage

<!-- UsageSnippet language="typescript" operationID="get_/api/v1/public/streams" method="get" path="/api/v1/public/streams" -->
```typescript
import { TracearrSDK } from "@tolulikestocode/tracearr-sdk";

const tracearrSDK = new TracearrSDK({
  bearerAuth: process.env["TRACEARRSDK_BEARER_AUTH"] ?? "",
});

async function run() {
  const result = await tracearrSDK.publicAPI.getApiV1PublicStreams({
    serverId: "550e8400-e29b-41d4-a716-446655440000",
    summary: false,
  });

  console.log(result);
}

run();
```

### Standalone function

The standalone function version of this method:

```typescript
import { TracearrSDKCore } from "@tolulikestocode/tracearr-sdk/core.js";
import { publicAPIGetAPIV1PublicStreams } from "@tolulikestocode/tracearr-sdk/funcs/public-api-get-apiv1-public-streams.js";

// Use `TracearrSDKCore` for best tree-shaking performance.
// You can create one instance of it to use across an application.
const tracearrSDK = new TracearrSDKCore({
  bearerAuth: process.env["TRACEARRSDK_BEARER_AUTH"] ?? "",
});

async function run() {
  const res = await publicAPIGetAPIV1PublicStreams(tracearrSDK, {
    serverId: "550e8400-e29b-41d4-a716-446655440000",
    summary: false,
  });
  if (res.ok) {
    const { value: result } = res;
    console.log(result);
  } else {
    console.log("publicAPIGetAPIV1PublicStreams failed:", res.error);
  }
}

run();
```

### Parameters

| Parameter                                                                                                                                                                      | Type                                                                                                                                                                           | Required                                                                                                                                                                       | Description                                                                                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `request`                                                                                                                                                                      | [operations.GetApiV1PublicStreamsRequest](../../models/operations/get-api-v1-public-streams-request.md)                                                                        | :heavy_check_mark:                                                                                                                                                             | The request object to use for the request.                                                                                                                                     |
| `options`                                                                                                                                                                      | RequestOptions                                                                                                                                                                 | :heavy_minus_sign:                                                                                                                                                             | Used to set various options for making HTTP requests.                                                                                                                          |
| `options.fetchOptions`                                                                                                                                                         | [RequestInit](https://developer.mozilla.org/en-US/docs/Web/API/Request/Request#options)                                                                                        | :heavy_minus_sign:                                                                                                                                                             | Options that are passed to the underlying HTTP request. This can be used to inject extra headers for examples. All `Request` options, except `method` and `body`, are allowed. |
| `options.retries`                                                                                                                                                              | [RetryConfig](../../lib/utils/retryconfig.md)                                                                                                                                  | :heavy_minus_sign:                                                                                                                                                             | Enables retrying HTTP requests under certain failure conditions.                                                                                                               |

### Response

**Promise\<[operations.GetApiV1PublicStreamsResponse](../../models/operations/get-api-v1-public-streams-response.md)\>**

### Errors

| Error Type                     | Status Code                    | Content Type                   |
| ------------------------------ | ------------------------------ | ------------------------------ |
| errors.TracearrSDKDefaultError | 4XX, 5XX                       | \*/\*                          |

## postApiV1PublicStreamsIdTerminate

Stop an active playback session. Optionally display a message to the user (supported on all platforms).

### Example Usage

<!-- UsageSnippet language="typescript" operationID="post_/api/v1/public/streams/{id}/terminate" method="post" path="/api/v1/public/streams/{id}/terminate" -->
```typescript
import { TracearrSDK } from "@tolulikestocode/tracearr-sdk";

const tracearrSDK = new TracearrSDK({
  bearerAuth: process.env["TRACEARRSDK_BEARER_AUTH"] ?? "",
});

async function run() {
  const result = await tracearrSDK.publicAPI.postApiV1PublicStreamsIdTerminate({
    id: "aab6379c-c081-4b38-b75c-c23c45cc7579",
  });

  console.log(result);
}

run();
```

### Standalone function

The standalone function version of this method:

```typescript
import { TracearrSDKCore } from "@tolulikestocode/tracearr-sdk/core.js";
import { publicAPIPostAPIV1PublicStreamsIdTerminate } from "@tolulikestocode/tracearr-sdk/funcs/public-api-post-apiv1-public-streams-id-terminate.js";

// Use `TracearrSDKCore` for best tree-shaking performance.
// You can create one instance of it to use across an application.
const tracearrSDK = new TracearrSDKCore({
  bearerAuth: process.env["TRACEARRSDK_BEARER_AUTH"] ?? "",
});

async function run() {
  const res = await publicAPIPostAPIV1PublicStreamsIdTerminate(tracearrSDK, {
    id: "aab6379c-c081-4b38-b75c-c23c45cc7579",
  });
  if (res.ok) {
    const { value: result } = res;
    console.log(result);
  } else {
    console.log("publicAPIPostAPIV1PublicStreamsIdTerminate failed:", res.error);
  }
}

run();
```

### Parameters

| Parameter                                                                                                                                                                      | Type                                                                                                                                                                           | Required                                                                                                                                                                       | Description                                                                                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `request`                                                                                                                                                                      | [operations.PostApiV1PublicStreamsIdTerminateRequest](../../models/operations/post-api-v1-public-streams-id-terminate-request.md)                                              | :heavy_check_mark:                                                                                                                                                             | The request object to use for the request.                                                                                                                                     |
| `options`                                                                                                                                                                      | RequestOptions                                                                                                                                                                 | :heavy_minus_sign:                                                                                                                                                             | Used to set various options for making HTTP requests.                                                                                                                          |
| `options.fetchOptions`                                                                                                                                                         | [RequestInit](https://developer.mozilla.org/en-US/docs/Web/API/Request/Request#options)                                                                                        | :heavy_minus_sign:                                                                                                                                                             | Options that are passed to the underlying HTTP request. This can be used to inject extra headers for examples. All `Request` options, except `method` and `body`, are allowed. |
| `options.retries`                                                                                                                                                              | [RetryConfig](../../lib/utils/retryconfig.md)                                                                                                                                  | :heavy_minus_sign:                                                                                                                                                             | Enables retrying HTTP requests under certain failure conditions.                                                                                                               |

### Response

**Promise\<[models.TerminateStreamResponse](../../models/terminate-stream-response.md)\>**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| errors.TerminateStreamErrorResponse | 500                                 | application/json                    |
| errors.TracearrSDKDefaultError      | 4XX, 5XX                            | \*/\*                               |

## getApiV1PublicUsers

Paginated users with session counts and trust scores. Users with accounts on multiple servers appear once per server.

### Example Usage

<!-- UsageSnippet language="typescript" operationID="get_/api/v1/public/users" method="get" path="/api/v1/public/users" -->
```typescript
import { TracearrSDK } from "@tolulikestocode/tracearr-sdk";

const tracearrSDK = new TracearrSDK({
  bearerAuth: process.env["TRACEARRSDK_BEARER_AUTH"] ?? "",
});

async function run() {
  const result = await tracearrSDK.publicAPI.getApiV1PublicUsers({
    serverId: "550e8400-e29b-41d4-a716-446655440000",
  });

  console.log(result);
}

run();
```

### Standalone function

The standalone function version of this method:

```typescript
import { TracearrSDKCore } from "@tolulikestocode/tracearr-sdk/core.js";
import { publicAPIGetAPIV1PublicUsers } from "@tolulikestocode/tracearr-sdk/funcs/public-api-get-apiv1-public-users.js";

// Use `TracearrSDKCore` for best tree-shaking performance.
// You can create one instance of it to use across an application.
const tracearrSDK = new TracearrSDKCore({
  bearerAuth: process.env["TRACEARRSDK_BEARER_AUTH"] ?? "",
});

async function run() {
  const res = await publicAPIGetAPIV1PublicUsers(tracearrSDK, {
    serverId: "550e8400-e29b-41d4-a716-446655440000",
  });
  if (res.ok) {
    const { value: result } = res;
    console.log(result);
  } else {
    console.log("publicAPIGetAPIV1PublicUsers failed:", res.error);
  }
}

run();
```

### Parameters

| Parameter                                                                                                                                                                      | Type                                                                                                                                                                           | Required                                                                                                                                                                       | Description                                                                                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `request`                                                                                                                                                                      | [operations.GetApiV1PublicUsersRequest](../../models/operations/get-api-v1-public-users-request.md)                                                                            | :heavy_check_mark:                                                                                                                                                             | The request object to use for the request.                                                                                                                                     |
| `options`                                                                                                                                                                      | RequestOptions                                                                                                                                                                 | :heavy_minus_sign:                                                                                                                                                             | Used to set various options for making HTTP requests.                                                                                                                          |
| `options.fetchOptions`                                                                                                                                                         | [RequestInit](https://developer.mozilla.org/en-US/docs/Web/API/Request/Request#options)                                                                                        | :heavy_minus_sign:                                                                                                                                                             | Options that are passed to the underlying HTTP request. This can be used to inject extra headers for examples. All `Request` options, except `method` and `body`, are allowed. |
| `options.retries`                                                                                                                                                              | [RetryConfig](../../lib/utils/retryconfig.md)                                                                                                                                  | :heavy_minus_sign:                                                                                                                                                             | Enables retrying HTTP requests under certain failure conditions.                                                                                                               |

### Response

**Promise\<[models.UsersResponse](../../models/users-response.md)\>**

### Errors

| Error Type                     | Status Code                    | Content Type                   |
| ------------------------------ | ------------------------------ | ------------------------------ |
| errors.TracearrSDKDefaultError | 4XX, 5XX                       | \*/\*                          |

## getApiV1PublicViolations

Paginated violations in descending order. Filter by server, severity, or acknowledged status.

### Example Usage

<!-- UsageSnippet language="typescript" operationID="get_/api/v1/public/violations" method="get" path="/api/v1/public/violations" -->
```typescript
import { TracearrSDK } from "@tolulikestocode/tracearr-sdk";

const tracearrSDK = new TracearrSDK({
  bearerAuth: process.env["TRACEARRSDK_BEARER_AUTH"] ?? "",
});

async function run() {
  const result = await tracearrSDK.publicAPI.getApiV1PublicViolations({
    serverId: "550e8400-e29b-41d4-a716-446655440000",
  });

  console.log(result);
}

run();
```

### Standalone function

The standalone function version of this method:

```typescript
import { TracearrSDKCore } from "@tolulikestocode/tracearr-sdk/core.js";
import { publicAPIGetAPIV1PublicViolations } from "@tolulikestocode/tracearr-sdk/funcs/public-api-get-apiv1-public-violations.js";

// Use `TracearrSDKCore` for best tree-shaking performance.
// You can create one instance of it to use across an application.
const tracearrSDK = new TracearrSDKCore({
  bearerAuth: process.env["TRACEARRSDK_BEARER_AUTH"] ?? "",
});

async function run() {
  const res = await publicAPIGetAPIV1PublicViolations(tracearrSDK, {
    serverId: "550e8400-e29b-41d4-a716-446655440000",
  });
  if (res.ok) {
    const { value: result } = res;
    console.log(result);
  } else {
    console.log("publicAPIGetAPIV1PublicViolations failed:", res.error);
  }
}

run();
```

### Parameters

| Parameter                                                                                                                                                                      | Type                                                                                                                                                                           | Required                                                                                                                                                                       | Description                                                                                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `request`                                                                                                                                                                      | [operations.GetApiV1PublicViolationsRequest](../../models/operations/get-api-v1-public-violations-request.md)                                                                  | :heavy_check_mark:                                                                                                                                                             | The request object to use for the request.                                                                                                                                     |
| `options`                                                                                                                                                                      | RequestOptions                                                                                                                                                                 | :heavy_minus_sign:                                                                                                                                                             | Used to set various options for making HTTP requests.                                                                                                                          |
| `options.fetchOptions`                                                                                                                                                         | [RequestInit](https://developer.mozilla.org/en-US/docs/Web/API/Request/Request#options)                                                                                        | :heavy_minus_sign:                                                                                                                                                             | Options that are passed to the underlying HTTP request. This can be used to inject extra headers for examples. All `Request` options, except `method` and `body`, are allowed. |
| `options.retries`                                                                                                                                                              | [RetryConfig](../../lib/utils/retryconfig.md)                                                                                                                                  | :heavy_minus_sign:                                                                                                                                                             | Enables retrying HTTP requests under certain failure conditions.                                                                                                               |

### Response

**Promise\<[models.ViolationsResponse](../../models/violations-response.md)\>**

### Errors

| Error Type                     | Status Code                    | Content Type                   |
| ------------------------------ | ------------------------------ | ------------------------------ |
| errors.TracearrSDKDefaultError | 4XX, 5XX                       | \*/\*                          |

## getApiV1PublicHistory

Paginated session history grouped by unique plays. Multiple pause/resume cycles are aggregated into a single entry with combined duration and segment count.

### Example Usage

<!-- UsageSnippet language="typescript" operationID="get_/api/v1/public/history" method="get" path="/api/v1/public/history" -->
```typescript
import { TracearrSDK } from "@tolulikestocode/tracearr-sdk";

const tracearrSDK = new TracearrSDK({
  bearerAuth: process.env["TRACEARRSDK_BEARER_AUTH"] ?? "",
});

async function run() {
  const result = await tracearrSDK.publicAPI.getApiV1PublicHistory({
    serverId: "550e8400-e29b-41d4-a716-446655440000",
    timezone: "America/New_York",
  });

  console.log(result);
}

run();
```

### Standalone function

The standalone function version of this method:

```typescript
import { TracearrSDKCore } from "@tolulikestocode/tracearr-sdk/core.js";
import { publicAPIGetAPIV1PublicHistory } from "@tolulikestocode/tracearr-sdk/funcs/public-api-get-apiv1-public-history.js";

// Use `TracearrSDKCore` for best tree-shaking performance.
// You can create one instance of it to use across an application.
const tracearrSDK = new TracearrSDKCore({
  bearerAuth: process.env["TRACEARRSDK_BEARER_AUTH"] ?? "",
});

async function run() {
  const res = await publicAPIGetAPIV1PublicHistory(tracearrSDK, {
    serverId: "550e8400-e29b-41d4-a716-446655440000",
    timezone: "America/New_York",
  });
  if (res.ok) {
    const { value: result } = res;
    console.log(result);
  } else {
    console.log("publicAPIGetAPIV1PublicHistory failed:", res.error);
  }
}

run();
```

### Parameters

| Parameter                                                                                                                                                                      | Type                                                                                                                                                                           | Required                                                                                                                                                                       | Description                                                                                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `request`                                                                                                                                                                      | [operations.GetApiV1PublicHistoryRequest](../../models/operations/get-api-v1-public-history-request.md)                                                                        | :heavy_check_mark:                                                                                                                                                             | The request object to use for the request.                                                                                                                                     |
| `options`                                                                                                                                                                      | RequestOptions                                                                                                                                                                 | :heavy_minus_sign:                                                                                                                                                             | Used to set various options for making HTTP requests.                                                                                                                          |
| `options.fetchOptions`                                                                                                                                                         | [RequestInit](https://developer.mozilla.org/en-US/docs/Web/API/Request/Request#options)                                                                                        | :heavy_minus_sign:                                                                                                                                                             | Options that are passed to the underlying HTTP request. This can be used to inject extra headers for examples. All `Request` options, except `method` and `body`, are allowed. |
| `options.retries`                                                                                                                                                              | [RetryConfig](../../lib/utils/retryconfig.md)                                                                                                                                  | :heavy_minus_sign:                                                                                                                                                             | Enables retrying HTTP requests under certain failure conditions.                                                                                                               |

### Response

**Promise\<[models.HistoryResponse](../../models/history-response.md)\>**

### Errors

| Error Type                     | Status Code                    | Content Type                   |
| ------------------------------ | ------------------------------ | ------------------------------ |
| errors.TracearrSDKDefaultError | 4XX, 5XX                       | \*/\*                          |