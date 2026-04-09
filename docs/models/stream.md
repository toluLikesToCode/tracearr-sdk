# Stream

## Example Usage

```typescript
import { Stream } from "@tolulikestocode/tracearr-sdk/models";

let value: Stream = {
  id: "cdec8252-8ecb-4627-8e94-15d1f2d8f7de",
  serverId: "19dff379-323b-4425-9f7d-2730f28e1d82",
  serverName: "Main Plex Server",
  username: "John Doe",
  userThumb: "<value>",
  userAvatarUrl: "https://blue-drive.net",
  mediaTitle: "Inception",
  mediaType: "unknown",
  showTitle: "Breaking Bad",
  seasonNumber: 5,
  episodeNumber: 16,
  year: 2010,
  artistName: "Pink Floyd",
  albumName: "The Dark Side of the Moon",
  trackNumber: 3,
  discNumber: 1,
  thumbPath: "<value>",
  posterUrl: "https://downright-widow.name",
  durationMs: 8880000,
  state: "stopped",
  progressMs: 3600000,
  startedAt: new Date("2025-07-17T06:45:43.745Z"),
  isTranscode: false,
  videoDecision: "copy",
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
};
```

## Fields

| Field                                                                                         | Type                                                                                          | Required                                                                                      | Description                                                                                   | Example                                                                                       |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `id`                                                                                          | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `serverId`                                                                                    | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `serverName`                                                                                  | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           | Main Plex Server                                                                              |
| `username`                                                                                    | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           | John Doe                                                                                      |
| `userThumb`                                                                                   | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `userAvatarUrl`                                                                               | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `mediaTitle`                                                                                  | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           | Inception                                                                                     |
| `mediaType`                                                                                   | [models.StreamMediaType](../models/stream-media-type.md)                                      | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
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
| `durationMs`                                                                                  | *number*                                                                                      | :heavy_check_mark:                                                                            | Total media length                                                                            | 8880000                                                                                       |
| `state`                                                                                       | [models.StreamState](../models/stream-state.md)                                               | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `progressMs`                                                                                  | *number*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           | 3600000                                                                                       |
| `startedAt`                                                                                   | [Date](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date) | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `isTranscode`                                                                                 | *boolean*                                                                                     | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `videoDecision`                                                                               | [models.StreamVideoDecision](../models/stream-video-decision.md)                              | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `audioDecision`                                                                               | [models.StreamAudioDecision](../models/stream-audio-decision.md)                              | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
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
| `device`                                                                                      | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           | Apple TV                                                                                      |
| `player`                                                                                      | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           | Plex for Apple TV                                                                             |
| `product`                                                                                     | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           | Plex for Apple TV                                                                             |
| `platform`                                                                                    | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           | tvOS                                                                                          |