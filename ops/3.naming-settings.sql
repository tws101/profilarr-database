-- =============================================================================
-- Naming Settings
-- =============================================================================

INSERT INTO radarr_naming (
  name, rename, movie_format, movie_folder_format,
  replace_illegal_characters, colon_replacement_format
) VALUES (
  'Radarr Naming',
  1,
  '{Movie CleanTitle} {Release Year} {Quality Title} {MediaInfo VideoCodec} {MediaInfo VideoBitDepth}bit  {MediaInfo VideoDynamicRange} {MediaInfo AudioCodec} {MediaInfo AudioChannels} {MediaInfo AudioLanguages} Subtitles{MediaInfo SubtitleLanguages:EN+}',
  '{Movie Title} ({Release Year})',
  1,
  'delete'
);

INSERT INTO sonarr_naming (
  name, rename,
  standard_episode_format, daily_episode_format, anime_episode_format,
  series_folder_format, season_folder_format,
  replace_illegal_characters, colon_replacement_format,
  custom_colon_replacement_format, multi_episode_style
) VALUES (
  'Sonarr Naming',
  1,
  '{Series CleanTitle}- S{season:00}E{episode:00} - {Episode CleanTitle} {Quality Title} {MediaInfo VideoCodec} {MediaInfo VideoBitDepth}bit {MediaInfo VideoDynamicRange} {MediaInfo AudioCodec} {MediaInfo AudioChannels} {MediaInfo AudioLanguages} Subtitles{MediaInfo SubtitleLanguages:EN+}',
  '{Series CleanTitle} - {Air-Date} - {Episode CleanTitle} {Quality Title} {MediaInfo VideoCodec} {MediaInfo VideoBitDepth}bit {MediaInfo VideoDynamicRange} {MediaInfo AudioCodec} {MediaInfo AudioChannels} {MediaInfo AudioLanguages} Subtitles{MediaInfo SubtitleLanguages:EN+}',
  '{Series CleanTitle}- S{season:00}E{episode:00} - {Episode CleanTitle} {Quality Title} {MediaInfo VideoCodec} {MediaInfo VideoBitDepth}bit {MediaInfo VideoDynamicRange} {MediaInfo AudioCodec} {MediaInfo AudioChannels} {MediaInfo AudioLanguages} Subtitles{MediaInfo SubtitleLanguages:EN+}',
  '{Series CleanTitle}',
  'Season {season}',
  1,
  0,
  NULL,
  4
);
