# SessionHistory

## Example Usage

```typescript
import { SessionHistory } from "tracearr-sdk/models";

let value: SessionHistory = {
  id: "187e3f7b-dbcc-4149-a8ab-ef5cb8166c58",
  serverId: "5eae7cdb-984f-4c4b-a79a-c18ba1a09dcf",
  serverName: "Main Plex Server",
  state: "stopped",
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
  thumbPath: null,
  posterUrl: "https://diligent-jet.info",
  durationMs: 38809,
  progressMs: 582547,
  totalDurationMs: 618413,
  startedAt: new Date("2024-05-14T14:22:44.138Z"),
  stoppedAt: new Date("2026-05-02T00:14:50.454Z"),
  watched: false,
  segmentCount: 1,
  device: "Apple TV",
  player: "Plex for Apple TV",
  product: "Plex for Apple TV",
  platform: "tvOS",
  isTranscode: true,
  videoDecision: "transcode",
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
  streamVideoDetails: null,
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
  user: {
    id: "c59cd35f-065d-4d98-b638-6cb7de793747",
    username: "john_doe",
    thumbUrl: "https://untried-sightseeing.name",
    avatarUrl: "https://taut-subexpression.name/",
  },
};
```

## Fields

| Field                                                                                         | Type                                                                                          | Required                                                                                      | Description                                                                                   | Example                                                                                       |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `id`                                                                                          | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `serverId`                                                                                    | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `serverName`                                                                                  | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           | Main Plex Server                                                                              |
| `state`                                                                                       | [models.SessionHistoryState](../models/session-history-state.md)                              | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `mediaTitle`                                                                                  | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           | Inception                                                                                     |
| `mediaType`                                                                                   | [models.SessionHistoryMediaType](../models/session-history-media-type.md)                     | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `showTitle`                                                                                   | *string*                                                                                      | :heavy_check_mark:                                                                            | Show name (episodes only)                                                                     | Breaking Bad                                                                                  |
| `seasonNumber`                                                                                | *number*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           | 5                                                                                             |
| `episodeNumber`                                                                               | *number*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           | 16                                                                                            |
| `year`                                                                                        | *number*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           | 2010                                                                                          |
| `artistName`                                                                                  | *string*                                                                                      | :heavy_check_mark:                                                                            | Artist name (music tracks only)                                                               | Pink Floyd                                                                                    |
| `albumName`                                                                                   | *string*                                                                                      | :heavy_check_mark:                                                                            | Album name (music tracks only)                                                                | The Dark Side of the Moon                                                                     |
| `trackNumber`                                                                                 | *number*                                                                                      | :heavy_check_mark:                                                                            | Track number (music tracks only)                                                              | 3                                                                                             |
| `discNumber`                                                                                  | *number*                                                                                      | :heavy_check_mark:                                                                            | Disc number (music tracks only)                                                               | 1                                                                                             |
| `thumbPath`                                                                                   | *string*                                                                                      | :heavy_check_mark:                                                                            | Poster path                                                                                   |                                                                                               |
| `posterUrl`                                                                                   | *string*                                                                                      | :heavy_check_mark:                                                                            | Proxied poster URL                                                                            |                                                                                               |
| `durationMs`                                                                                  | *number*                                                                                      | :heavy_check_mark:                                                                            | Total watch time across segments                                                              |                                                                                               |
| `progressMs`                                                                                  | *number*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `totalDurationMs`                                                                             | *number*                                                                                      | :heavy_check_mark:                                                                            | Media length                                                                                  |                                                                                               |
| `startedAt`                                                                                   | [Date](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date) | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `stoppedAt`                                                                                   | [Date](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date) | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `watched`                                                                                     | *boolean*                                                                                     | :heavy_check_mark:                                                                            | True if watched 85%+                                                                          |                                                                                               |
| `segmentCount`                                                                                | *number*                                                                                      | :heavy_check_mark:                                                                            | Pause/resume segment count                                                                    | 1                                                                                             |
| `device`                                                                                      | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           | Apple TV                                                                                      |
| `player`                                                                                      | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           | Plex for Apple TV                                                                             |
| `product`                                                                                     | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           | Plex for Apple TV                                                                             |
| `platform`                                                                                    | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           | tvOS                                                                                          |
| `isTranscode`                                                                                 | *boolean*                                                                                     | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `videoDecision`                                                                               | [models.SessionHistoryVideoDecision](../models/session-history-video-decision.md)             | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `audioDecision`                                                                               | [models.SessionHistoryAudioDecision](../models/session-history-audio-decision.md)             | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `bitrate`                                                                                     | *number*                                                                                      | :heavy_check_mark:                                                                            | Bitrate in kbps                                                                               | 20000                                                                                         |
| `sourceVideoCodec`                                                                            | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           | hevc                                                                                          |
| `sourceAudioCodec`                                                                            | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           | truehd                                                                                        |
| `sourceAudioChannels`                                                                         | *number*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           | 8                                                                                             |
| `sourceVideoWidth`                                                                            | *number*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           | 3840                                                                                          |
| `sourceVideoHeight`                                                                           | *number*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           | 2160                                                                                          |
| `sourceVideoDetails`                                                                          | [models.SourceVideoDetails](../models/source-video-details.md)                                | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `sourceAudioDetails`                                                                          | [models.SourceAudioDetails](../models/source-audio-details.md)                                | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `streamVideoCodec`                                                                            | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           | h264                                                                                          |
| `streamAudioCodec`                                                                            | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           | aac                                                                                           |
| `streamVideoDetails`                                                                          | [models.StreamVideoDetails](../models/stream-video-details.md)                                | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `streamAudioDetails`                                                                          | [models.StreamAudioDetails](../models/stream-audio-details.md)                                | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `transcodeInfo`                                                                               | [models.TranscodeInfo](../models/transcode-info.md)                                           | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `subtitleInfo`                                                                                | [models.SubtitleInfo](../models/subtitle-info.md)                                             | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `resolution`                                                                                  | *string*                                                                                      | :heavy_check_mark:                                                                            | 4K, 1080p, 720p, etc.                                                                         | 4K                                                                                            |
| `sourceVideoCodecDisplay`                                                                     | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           | HEVC                                                                                          |
| `sourceAudioCodecDisplay`                                                                     | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           | TrueHD                                                                                        |
| `audioChannelsDisplay`                                                                        | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           | 7.1                                                                                           |
| `streamVideoCodecDisplay`                                                                     | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           | H.264                                                                                         |
| `streamAudioCodecDisplay`                                                                     | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           | AAC                                                                                           |
| `user`                                                                                        | [models.SessionHistoryUser](../models/session-history-user.md)                                | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |