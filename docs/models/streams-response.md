# StreamsResponse

## Example Usage

```typescript
import { StreamsResponse } from "@cactus-labs/tracearr-sdk/models";

let value: StreamsResponse = {
  data: [
    {
      id: "f26d896e-5dc9-4670-b1ad-21694db62eb3",
      serverId: "a61886af-8339-4d85-a4cd-d5e76f43e612",
      serverName: "Main Plex Server",
      username: "John Doe",
      userThumb: "<value>",
      userAvatarUrl: "https://sinful-cruelty.com",
      mediaTitle: "Inception",
      mediaType: "live",
      showTitle: "Breaking Bad",
      seasonNumber: 5,
      episodeNumber: 16,
      year: 2010,
      artistName: "Pink Floyd",
      albumName: "The Dark Side of the Moon",
      trackNumber: 3,
      discNumber: 1,
      thumbPath: "<value>",
      posterUrl: "https://skeletal-section.org",
      durationMs: 8880000,
      state: "paused",
      progressMs: 3600000,
      startedAt: new Date("2025-05-18T08:35:00.407Z"),
      isTranscode: false,
      videoDecision: null,
      audioDecision: "copy",
      bitrate: 20000,
      sourceVideoCodec: "hevc",
      sourceAudioCodec: "truehd",
      sourceAudioChannels: 8,
      sourceVideoWidth: 3840,
      sourceVideoHeight: 2160,
      sourceVideoDetails: {
        framerate: "23.976",
        dynamicRange: "HDR10",
        aspectRatio: 1.78,
        profile: "main 10",
        level: "5.1",
        colorSpace: "bt2020nc",
        colorDepth: 10,
      },
      sourceAudioDetails: null,
      streamVideoCodec: "h264",
      streamAudioCodec: "aac",
      streamVideoDetails: {
        width: 1920,
        height: 1080,
        framerate: "23.976",
        dynamicRange: "SDR",
      },
      streamAudioDetails: {
        channels: 2,
        language: "eng",
      },
      transcodeInfo: {
        sourceContainer: "mkv",
        streamContainer: "mpegts",
        hwDecoding: "videotoolbox",
        hwEncoding: "videotoolbox",
        speed: 2.5,
      },
      subtitleInfo: {
        decision: "burn",
        codec: "srt",
        language: "eng",
      },
      resolution: "4K",
      sourceVideoCodecDisplay: "HEVC",
      sourceAudioCodecDisplay: "TrueHD",
      audioChannelsDisplay: "7.1",
      streamVideoCodecDisplay: "H.264",
      streamAudioCodecDisplay: "AAC",
      device: "Apple TV",
      player: "Plex for Apple TV",
      product: "Plex for Apple TV",
      platform: "tvOS",
    },
  ],
  summary: {
    total: 5,
    transcodes: 2,
    directStreams: 1,
    directPlays: 2,
    totalBitrate: "45.2 Mbps",
    byServer: [
      {
        serverId: "a72ec93a-9aa7-4f59-a1d3-cc8b4521cdce",
        serverName: "Main Plex Server",
        total: 3,
        transcodes: 1,
        directStreams: 1,
        directPlays: 1,
        totalBitrate: "22.5 Mbps",
      },
    ],
  },
};
```

## Fields

| Field                                                 | Type                                                  | Required                                              | Description                                           |
| ----------------------------------------------------- | ----------------------------------------------------- | ----------------------------------------------------- | ----------------------------------------------------- |
| `data`                                                | [models.Stream](../models/stream.md)[]                | :heavy_check_mark:                                    | N/A                                                   |
| `summary`                                             | [models.StreamsSummary](../models/streams-summary.md) | :heavy_check_mark:                                    | N/A                                                   |