# Tracearr SDK

Type-safe TypeScript SDK for the Tracearr public API.

[![Built by Speakeasy](https://img.shields.io/badge/Built_by-SPEAKEASY-374151?style=for-the-badge&labelColor=f3f4f6)](https://www.speakeasy.com/?utm_source=tracearr-sdk&utm_campaign=typescript)
[![License: MIT](https://img.shields.io/badge/LICENSE_//_MIT-3b5bdb?style=for-the-badge&labelColor=eff6ff)](https://opensource.org/licenses/MIT)


<br /><br />
> [!NOTE]
> This repository is ready to consume from GitHub now as `@tolulikestocode/tracearr-sdk`. Until the first npm release exists, install from GitHub and always pass your own Tracearr base URL when constructing the client.

<!-- Start Summary [summary] -->
## Summary

Tracearr Public API: External API for third-party integrations.

## Authentication

All endpoints require Bearer token authentication:

```
Authorization: Bearer trr_pub_<your_token>
```

Generate your API key in **Settings > General**.

## Pagination

Paginated endpoints support `page` (1-indexed) and `pageSize` (max 100, default 25).

## Filtering

Most endpoints support `serverId` to filter by media server.
<!-- End Summary [summary] -->

<!-- Start Table of Contents [toc] -->
## Table of Contents
<!-- $toc-max-depth=2 -->
* [Tracearr SDK](#tracearr-sdk)
  * [Authentication](#authentication)
  * [Filtering](#filtering)
  * [SDK Installation](#sdk-installation)
  * [Requirements](#requirements)
  * [SDK Example Usage](#sdk-example-usage)
  * [Authentication](#authentication-1)
  * [Available Resources and Operations](#available-resources-and-operations)
  * [Standalone functions](#standalone-functions)
  * [Retries](#retries)
  * [Error Handling](#error-handling)
  * [Server Selection](#server-selection)
  * [Custom HTTP Client](#custom-http-client)
  * [Debugging](#debugging)
* [Development](#development)
  * [Maturity](#maturity)
  * [Contributions](#contributions)

<!-- End Table of Contents [toc] -->

<!-- Start SDK Installation [installation] -->
## SDK Installation

> [!TIP]
> To finish publishing your SDK to npm and others you must [run your first generation action](https://www.speakeasy.com/docs/github-setup#step-by-step-guide).


The SDK can be installed with either [npm](https://www.npmjs.com/), [pnpm](https://pnpm.io/), [bun](https://bun.sh/) or [yarn](https://classic.yarnpkg.com/en/) package managers.

### NPM

```bash
npm add https://github.com/toluLikesToCode/tracearr-sdk
```

### PNPM

```bash
pnpm add https://github.com/toluLikesToCode/tracearr-sdk
```

### Bun

```bash
bun add https://github.com/toluLikesToCode/tracearr-sdk
```

### Yarn

```bash
yarn add https://github.com/toluLikesToCode/tracearr-sdk
```

> [!NOTE]
> This package is published as an ES Module (ESM) only. For applications using
> CommonJS, use `await import()` to import and use this package.
<!-- End SDK Installation [installation] -->

<!-- Start Requirements [requirements] -->
## Requirements

For supported JavaScript runtimes, please consult [RUNTIMES.md](RUNTIMES.md).
<!-- End Requirements [requirements] -->

<!-- Start SDK Example Usage [usage] -->
## SDK Example Usage

### Example

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

<!-- Start Authentication [security] -->
## Authentication

### Per-Client Security Schemes

This SDK supports the following security scheme globally:

| Name         | Type | Scheme      | Environment Variable      |
| ------------ | ---- | ----------- | ------------------------- |
| `bearerAuth` | http | HTTP Bearer | `TRACEARRSDK_BEARER_AUTH` |

To authenticate with the API the `bearerAuth` parameter must be set when initializing the SDK client instance. For example:
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
<!-- End Authentication [security] -->

<!-- Start Available Resources and Operations [operations] -->
## Available Resources and Operations

<details open>
<summary>Available methods</summary>

### [PublicAPI](docs/sdks/publicapi/README.md)

* [getApiV1PublicHealth](docs/sdks/publicapi/README.md#getapiv1publichealth) - Check server connectivity
* [getApiV1PublicStats](docs/sdks/publicapi/README.md#getapiv1publicstats) - Dashboard statistics
* [getApiV1PublicStatsToday](docs/sdks/publicapi/README.md#getapiv1publicstatstoday) - Today's dashboard statistics
* [getApiV1PublicActivity](docs/sdks/publicapi/README.md#getapiv1publicactivity) - Playback activity trends
* [getApiV1PublicStreams](docs/sdks/publicapi/README.md#getapiv1publicstreams) - Active playback sessions
* [postApiV1PublicStreamsIdTerminate](docs/sdks/publicapi/README.md#postapiv1publicstreamsidterminate) - Terminate active stream
* [getApiV1PublicUsers](docs/sdks/publicapi/README.md#getapiv1publicusers) - User list with activity metrics
* [getApiV1PublicViolations](docs/sdks/publicapi/README.md#getapiv1publicviolations) - Rule violations
* [getApiV1PublicHistory](docs/sdks/publicapi/README.md#getapiv1publichistory) - Session history

</details>
<!-- End Available Resources and Operations [operations] -->

<!-- Start Standalone functions [standalone-funcs] -->
## Standalone functions

All the methods listed above are available as standalone functions. These
functions are ideal for use in applications running in the browser, serverless
runtimes or other environments where application bundle size is a primary
concern. When using a bundler to build your application, all unused
functionality will be either excluded from the final bundle or tree-shaken away.

To read more about standalone functions, check [FUNCTIONS.md](./FUNCTIONS.md).

<details>

<summary>Available standalone functions</summary>

- [`publicAPIGetAPIV1PublicActivity`](docs/sdks/publicapi/README.md#getapiv1publicactivity) - Playback activity trends
- [`publicAPIGetAPIV1PublicHealth`](docs/sdks/publicapi/README.md#getapiv1publichealth) - Check server connectivity
- [`publicAPIGetAPIV1PublicHistory`](docs/sdks/publicapi/README.md#getapiv1publichistory) - Session history
- [`publicAPIGetAPIV1PublicStats`](docs/sdks/publicapi/README.md#getapiv1publicstats) - Dashboard statistics
- [`publicAPIGetAPIV1PublicStatsToday`](docs/sdks/publicapi/README.md#getapiv1publicstatstoday) - Today's dashboard statistics
- [`publicAPIGetAPIV1PublicStreams`](docs/sdks/publicapi/README.md#getapiv1publicstreams) - Active playback sessions
- [`publicAPIGetAPIV1PublicUsers`](docs/sdks/publicapi/README.md#getapiv1publicusers) - User list with activity metrics
- [`publicAPIGetAPIV1PublicViolations`](docs/sdks/publicapi/README.md#getapiv1publicviolations) - Rule violations
- [`publicAPIPostAPIV1PublicStreamsIdTerminate`](docs/sdks/publicapi/README.md#postapiv1publicstreamsidterminate) - Terminate active stream

</details>
<!-- End Standalone functions [standalone-funcs] -->

<!-- Start Retries [retries] -->
## Retries

Some of the endpoints in this SDK support retries.  If you use the SDK without any configuration, it will fall back to the default retry strategy provided by the API.  However, the default retry strategy can be overridden on a per-operation basis, or across the entire SDK.

To change the default retry strategy for a single API call, simply provide a retryConfig object to the call:
```typescript
import { TracearrSDK } from "@tolulikestocode/tracearr-sdk";

const tracearrSDK = new TracearrSDK({
  bearerAuth: process.env["TRACEARRSDK_BEARER_AUTH"] ?? "",
});

async function run() {
  const result = await tracearrSDK.publicAPI.getApiV1PublicHealth({
    retries: {
      strategy: "backoff",
      backoff: {
        initialInterval: 1,
        maxInterval: 50,
        exponent: 1.1,
        maxElapsedTime: 100,
      },
      retryConnectionErrors: false,
    },
  });

  console.log(result);
}

run();

```

If you'd like to override the default retry strategy for all operations that support retries, you can provide a retryConfig at SDK initialization:
```typescript
import { TracearrSDK } from "@tolulikestocode/tracearr-sdk";

const tracearrSDK = new TracearrSDK({
  retryConfig: {
    strategy: "backoff",
    backoff: {
      initialInterval: 1,
      maxInterval: 50,
      exponent: 1.1,
      maxElapsedTime: 100,
    },
    retryConnectionErrors: false,
  },
  bearerAuth: process.env["TRACEARRSDK_BEARER_AUTH"] ?? "",
});

async function run() {
  const result = await tracearrSDK.publicAPI.getApiV1PublicHealth();

  console.log(result);
}

run();

```
<!-- End Retries [retries] -->

<!-- Start Error Handling [errors] -->
## Error Handling

[`TracearrSDKError`](./src/models/errors/tracearr-sdk-error.ts) is the base class for all HTTP error responses. It has the following properties:

| Property            | Type       | Description                                                                             |
| ------------------- | ---------- | --------------------------------------------------------------------------------------- |
| `error.message`     | `string`   | Error message                                                                           |
| `error.statusCode`  | `number`   | HTTP response status code eg `404`                                                      |
| `error.headers`     | `Headers`  | HTTP response headers                                                                   |
| `error.body`        | `string`   | HTTP body. Can be empty string if no body is returned.                                  |
| `error.rawResponse` | `Response` | Raw HTTP response                                                                       |
| `error.data$`       |            | Optional. Some errors may contain structured data. [See Error Classes](#error-classes). |

### Example
```typescript
import { TracearrSDK } from "@tolulikestocode/tracearr-sdk";
import * as errors from "@tolulikestocode/tracearr-sdk/models/errors";

const tracearrSDK = new TracearrSDK({
  bearerAuth: process.env["TRACEARRSDK_BEARER_AUTH"] ?? "",
});

async function run() {
  try {
    const result = await tracearrSDK.publicAPI
      .postApiV1PublicStreamsIdTerminate({
        id: "aab6379c-c081-4b38-b75c-c23c45cc7579",
      });

    console.log(result);
  } catch (error) {
    // The base class for HTTP error responses
    if (error instanceof errors.TracearrSDKError) {
      console.log(error.message);
      console.log(error.statusCode);
      console.log(error.body);
      console.log(error.headers);

      // Depending on the method different errors may be thrown
      if (error instanceof errors.TerminateStreamErrorResponse) {
        console.log(error.data$.success); // boolean
        console.log(error.data$.error); // string
        console.log(error.data$.terminationLogId); // string
      }
    }
  }
}

run();

```

### Error Classes
**Primary error:**
* [`TracearrSDKError`](./src/models/errors/tracearr-sdk-error.ts): The base class for HTTP error responses.

<details><summary>Less common errors (7)</summary>

<br />

**Network errors:**
* [`ConnectionError`](./src/models/errors/http-client-errors.ts): HTTP client was unable to make a request to a server.
* [`RequestTimeoutError`](./src/models/errors/http-client-errors.ts): HTTP request timed out due to an AbortSignal signal.
* [`RequestAbortedError`](./src/models/errors/http-client-errors.ts): HTTP request was aborted by the client.
* [`InvalidRequestError`](./src/models/errors/http-client-errors.ts): Any input used to create a request is invalid.
* [`UnexpectedClientError`](./src/models/errors/http-client-errors.ts): Unrecognised or unexpected error.


**Inherit from [`TracearrSDKError`](./src/models/errors/tracearr-sdk-error.ts)**:
* [`TerminateStreamErrorResponse`](./src/models/errors/terminate-stream-error-response.ts): Termination failed. Status code `500`. Applicable to 1 of 9 methods.*
* [`ResponseValidationError`](./src/models/errors/response-validation-error.ts): Type mismatch between the data returned from the server and the structure expected by the SDK. See `error.rawValue` for the raw value and `error.pretty()` for a nicely formatted multi-line string.

</details>

\* Check [the method documentation](#available-resources-and-operations) to see if the error is applicable.
<!-- End Error Handling [errors] -->

<!-- Start Server Selection [server] -->
## Server Selection

### Override Server URL Per-Client

The default server can be overridden globally by passing a URL to the `serverURL: string` optional parameter when initializing the SDK client instance. For example:
```typescript
import { TracearrSDK } from "@tolulikestocode/tracearr-sdk";

const tracearrSDK = new TracearrSDK({
  serverURL: "https://your-tracearr.example.com",
  bearerAuth: process.env["TRACEARRSDK_BEARER_AUTH"] ?? "",
});

async function run() {
  const result = await tracearrSDK.publicAPI.getApiV1PublicHealth();

  console.log(result);
}

run();

```
<!-- End Server Selection [server] -->

<!-- Start Custom HTTP Client [http-client] -->
## Custom HTTP Client

The TypeScript SDK makes API calls using an `HTTPClient` that wraps the native
[Fetch API](https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API). This
client is a thin wrapper around `fetch` and provides the ability to attach hooks
around the request lifecycle that can be used to modify the request or handle
errors and response.

The `HTTPClient` constructor takes an optional `fetcher` argument that can be
used to integrate a third-party HTTP client or when writing tests to mock out
the HTTP client and feed in fixtures.

The following example shows how to:
- route requests through a proxy server using [undici](https://www.npmjs.com/package/undici)'s ProxyAgent
- use the `"beforeRequest"` hook to add a custom header and a timeout to requests
- use the `"requestError"` hook to log errors

```typescript
import { TracearrSDK } from "@tolulikestocode/tracearr-sdk";
import { ProxyAgent } from "undici";
import { HTTPClient } from "@tolulikestocode/tracearr-sdk/lib/http";

const dispatcher = new ProxyAgent("http://proxy.example.com:8080");

const httpClient = new HTTPClient({
  // 'fetcher' takes a function that has the same signature as native 'fetch'.
  fetcher: (input, init) =>
    // 'dispatcher' is specific to undici and not part of the standard Fetch API.
    fetch(input, { ...init, dispatcher } as RequestInit),
});

httpClient.addHook("beforeRequest", (request) => {
  const nextRequest = new Request(request, {
    signal: request.signal || AbortSignal.timeout(5000)
  });

  nextRequest.headers.set("x-custom-header", "custom value");

  return nextRequest;
});

httpClient.addHook("requestError", (error, request) => {
  console.group("Request Error");
  console.log("Reason:", `${error}`);
  console.log("Endpoint:", `${request.method} ${request.url}`);
  console.groupEnd();
});

const sdk = new TracearrSDK({ httpClient: httpClient });
```
<!-- End Custom HTTP Client [http-client] -->

<!-- Start Debugging [debug] -->
## Debugging

You can setup your SDK to emit debug logs for SDK requests and responses.

You can pass a logger that matches `console`'s interface as an SDK option.

> [!WARNING]
> Beware that debug logging will reveal secrets, like API tokens in headers, in log messages printed to a console or files. It's recommended to use this feature only during local development and not in production.

```typescript
import { TracearrSDK } from "@tolulikestocode/tracearr-sdk";

const sdk = new TracearrSDK({ debugLogger: console });
```

You can also enable a default debug logger by setting an environment variable `TRACEARRSDK_DEBUG` to true.
<!-- End Debugging [debug] -->

<!-- Placeholder for Future Speakeasy SDK Sections -->

# Development

## Maturity

This SDK is in beta, and there may be breaking changes between versions without a major version update. Therefore, we recommend pinning usage
to a specific package version. This way, you can install the same version each time without breaking changes unless you are intentionally
looking for the latest version.

## Contributions

While we value open-source contributions to this SDK, this library is generated programmatically. Any manual changes added to internal files will be overwritten on the next generation. 
We look forward to hearing your feedback. Feel free to open a PR or an issue with a proof of concept and we'll do our best to include it in a future release. 

### SDK Created by [Speakeasy](https://www.speakeasy.com/?utm_source=tracearr-sdk&utm_campaign=typescript)
