-- @operation: export
-- @entity: batch
-- @name: Naming Added
-- @exportedAt: 2026-08-18T21:39:10.506Z
-- @opIds: 248, 249

-- --- BEGIN op 248 ( create radarr_naming "Radarr Naming" )
insert into "radarr_naming" ("name", "rename", "movie_format", "movie_folder_format", "replace_illegal_characters", "colon_replacement_format") values ('Radarr Naming', 1, '{Movie CleanTitle} {Release Year} {Quality Title} {MediaInfo VideoCodec} {MediaInfo VideoBitDepth}bit  {MediaInfo VideoDynamicRange} {MediaInfo AudioCodec} {MediaInfo AudioChannels} {MediaInfo AudioLanguages} Subtitles{MediaInfo SubtitleLanguages:EN+}', '{Movie Title} ({Release Year})', 1, 'delete');
-- --- END op 248

-- --- BEGIN op 249 ( create sonarr_naming "Sonarr Naming" )
insert into "sonarr_naming" ("name", "rename", "standard_episode_format", "daily_episode_format", "anime_episode_format", "series_folder_format", "season_folder_format", "replace_illegal_characters", "colon_replacement_format", "custom_colon_replacement_format", "multi_episode_style") values ('Sonarr Naming', 1, '{Series CleanTitle}- S{season:00}E{episode:00} - {Episode CleanTitle} {Quality Title} {MediaInfo VideoCodec} {MediaInfo VideoBitDepth}bit {MediaInfo VideoDynamicRange} {MediaInfo AudioCodec} {MediaInfo AudioChannels} {MediaInfo AudioLanguages} Subtitles{MediaInfo SubtitleLanguages:EN+}', '{Series CleanTitle} - {Air-Date} - {Episode CleanTitle} {Quality Title} {MediaInfo VideoCodec} {MediaInfo VideoBitDepth}bit {MediaInfo VideoDynamicRange} {MediaInfo AudioCodec} {MediaInfo AudioChannels} {MediaInfo AudioLanguages} Subtitles{MediaInfo SubtitleLanguages:EN+}', '{Series CleanTitle}- S{season:00}E{episode:00} - {Episode CleanTitle} {Quality Title} {MediaInfo VideoCodec} {MediaInfo VideoBitDepth}bit {MediaInfo VideoDynamicRange} {MediaInfo AudioCodec} {MediaInfo AudioChannels} {MediaInfo AudioLanguages} Subtitles{MediaInfo SubtitleLanguages:EN+}', '{Series CleanTitle}', 'Season {season}', 1, 0, NULL, 4);
-- --- END op 249
