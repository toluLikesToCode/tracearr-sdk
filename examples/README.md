# @tolulikestocode/tracearr-sdk Examples

This directory contains example scripts demonstrating how to use the
`@tolulikestocode/tracearr-sdk` package against a real Tracearr instance.

## Prerequisites

- Node.js (v18 or higher)
- npm

## Setup

1. Copy `.env.template` to `.env`:
   ```bash
   cp .env.template .env
   ```

2. Edit `.env` and set:
   - `TRACEARR_BASE_URL=https://your-tracearr.example.com`
   - `TRACEARRSDK_BEARER_AUTH=trr_pub_...`

## Running the Examples

To run an example file from the examples directory:

```bash
npm run build && npx tsx publicAPIGetAPIV1PublicHealth.example.ts
```

## Creating new examples

Duplicate an existing example file, they won't be overwritten by the generation process.

