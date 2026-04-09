# StreamState

## Example Usage

```typescript
import { StreamState } from "@cactus-labs/tracearr-sdk/models";

let value: StreamState = "paused";

// Open enum: unrecognized values are captured as Unrecognized<string>
```

## Values

```typescript
"playing" | "paused" | "stopped" | Unrecognized<string>
```