# HistoryResponse

## Example Usage

```typescript
import { HistoryResponse } from "tracearr-sdk/models";

let value: HistoryResponse = {
  data: [
    {
      id: "256f0853-c91f-4d83-b1f8-9005c6d85332",
      serverId: "9bda21de-d5ba-434d-b23a-7e3a0910cd88",
      serverName: "Main Plex Server",
      state: "stopped",
      mediaTitle: "Inception",
      mediaType: "episode",
      showTitle: "Breaking Bad",
      seasonNumber: 5,
      episodeNumber: 16,
      year: 2010,
      artistName: "Pink Floyd",
      albumName: "The Dark Side of the Moon",
      trackNumber: 3,
      discNumber: 1,
      thumbPath: "<value>",
      posterUrl: "https://thorough-range.info/",
      durationMs: 171875,
      progressMs: 924382,
      totalDurationMs: 851281,
      startedAt: new Date("2025-05-19T00:00:56.366Z"),
      stoppedAt: new Date("2025-05-13T23:34:07.935Z"),
      watched: true,
      segmentCount: 1,
      device: "Apple TV",
      player: "Plex for Apple TV",
      product: "Plex for Apple TV",
      platform: "tvOS",
      isTranscode: true,
      videoDecision: "directplay",
      audioDecision: "directplay",
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
      sourceAudioDetails: {
        channelLayout: "7.1",
        language: "eng",
        sampleRate: 48000,
      },
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
      subtitleInfo: null,
      resolution: "4K",
      sourceVideoCodecDisplay: "HEVC",
      sourceAudioCodecDisplay: "TrueHD",
      audioChannelsDisplay: "7.1",
      streamVideoCodecDisplay: "H.264",
      streamAudioCodecDisplay: "AAC",
      user: {
        id: "c59cd35f-065d-4d98-b638-6cb7de793747",
        username: "john_doe",
        thumbUrl: "https://untried-sightseeing.name",
        avatarUrl: "https://taut-subexpression.name/",
      },
    },
  ],
  meta: {
    total: 42,
    page: 1,
    pageSize: 25,
  },
};
```

## Fields

| Field                                                   | Type                                                    | Required                                                | Description                                             |
| ------------------------------------------------------- | ------------------------------------------------------- | ------------------------------------------------------- | ------------------------------------------------------- |
| `data`                                                  | [models.SessionHistory](../models/session-history.md)[] | :heavy_check_mark:                                      | N/A                                                     |
| `meta`                                                  | [models.PaginationMeta](../models/pagination-meta.md)   | :heavy_check_mark:                                      | N/A                                                     |