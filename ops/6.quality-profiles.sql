-- =============================================================================
-- Quality Profiles
-- =============================================================================

-- =============================================================================
-- 1. Main
-- =============================================================================
INSERT INTO quality_profiles (name, description, upgrades_allowed, minimum_custom_format_score, upgrade_until_score, upgrade_score_increment)
VALUES ('Main', 'Main profile for English.
Will upgrade to 4K. Surround Sound targeted.', 1, 0, 19, 1);

INSERT INTO quality_groups (quality_profile_name, name) VALUES
('Main', '480p'),
('Main', '720p'),
('Main', '1080p'),
('Main', '2160p');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name) VALUES
('Main', '480p', 'WEBDL-480p'),
('Main', '480p', 'WEBRip-480p'),
('Main', '480p', 'Bluray-576p'),
('Main', '480p', 'Bluray-480p'),
('Main', '720p', 'HDTV-720p'),
('Main', '720p', 'WEBDL-720p'),
('Main', '720p', 'WEBRip-720p'),
('Main', '720p', 'Bluray-720p'),
('Main', '1080p', 'HDTV-1080p'),
('Main', '1080p', 'WEBRip-1080p'),
('Main', '1080p', 'WEBDL-1080p'),
('Main', '1080p', 'Remux-1080p'),
('Main', '1080p', 'Bluray-1080p'),
('Main', '2160p', 'HDTV-2160p'),
('Main', '2160p', 'BR-DISK'),
('Main', '2160p', 'Bluray-2160p'),
('Main', '2160p', 'WEBDL-2160p'),
('Main', '2160p', 'WEBRip-2160p'),
('Main', '2160p', 'Remux-2160p');

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES
('Main', NULL, '2160p', 0, 1, 1),
('Main', NULL, '1080p', 1, 1, 0),
('Main', NULL, '720p', 2, 1, 0),
('Main', 'DVD', NULL, 3, 1, 0),
('Main', NULL, '480p', 4, 1, 0),
('Main', 'SDTV', NULL, 5, 1, 0),
-- Disabled qualities
('Main', 'DVD-R', NULL, 6, 0, 0),
('Main', 'CAM', NULL, 7, 0, 0),
('Main', 'DVDSCR', NULL, 8, 0, 0),
('Main', 'HDTV-480p', NULL, 9, 0, 0),
('Main', 'Raw-HD', NULL, 10, 0, 0),
('Main', 'REGIONAL', NULL, 11, 0, 0),
('Main', 'TELECINE', NULL, 12, 0, 0),
('Main', 'TELESYNC', NULL, 13, 0, 0),
('Main', 'Unknown', NULL, 14, 0, 0),
('Main', 'WORKPRINT', NULL, 15, 0, 0);

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES
('Main', '3D', 'all', -100),
('Main', 'Bad Source', 'radarr', -100),
('Main', 'Not English Audio', 'all', -100),
('Main', 'DV Only (No HDR)', 'all', -100),
('Main', '1.0 Mono', 'all', -5),
('Main', '4KUHD', 'all', 10),
('Main', '720/1080', 'all', 5),
('Main', 'Surround', 'all', 5),
('Main', 'HDR', 'all', 5),
('Main', 'Subtitles English', 'all', 1);

INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES
('Main', 'English', 'simple');

-- =============================================================================
-- 2. Anime
-- =============================================================================
INSERT INTO quality_profiles (name, description, upgrades_allowed, minimum_custom_format_score, upgrade_until_score, upgrade_score_increment)
VALUES ('Anime', 'Anime profile with dual audio preference.
Will upgrade to 4K. Surround Sound targeted.', 1, 0, 24, 1);

INSERT INTO quality_groups (quality_profile_name, name) VALUES
('Anime', '480p'),
('Anime', '720p'),
('Anime', '1080p'),
('Anime', '2160p');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name) VALUES
('Anime', '480p', 'WEBDL-480p'),
('Anime', '480p', 'WEBRip-480p'),
('Anime', '480p', 'Bluray-480p'),
('Anime', '480p', 'Bluray-576p'),
('Anime', '720p', 'HDTV-720p'),
('Anime', '720p', 'WEBDL-720p'),
('Anime', '720p', 'WEBRip-720p'),
('Anime', '720p', 'Bluray-720p'),
('Anime', '1080p', 'HDTV-1080p'),
('Anime', '1080p', 'WEBDL-1080p'),
('Anime', '1080p', 'WEBRip-1080p'),
('Anime', '1080p', 'Remux-1080p'),
('Anime', '1080p', 'Bluray-1080p'),
('Anime', '2160p', 'HDTV-2160p'),
('Anime', '2160p', 'BR-DISK'),
('Anime', '2160p', 'WEBDL-2160p'),
('Anime', '2160p', 'WEBRip-2160p'),
('Anime', '2160p', 'Remux-2160p'),
('Anime', '2160p', 'Bluray-2160p');

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES
('Anime', NULL, '2160p', 0, 1, 1),
('Anime', NULL, '1080p', 1, 1, 0),
('Anime', NULL, '720p', 2, 1, 0),
('Anime', 'DVD', NULL, 3, 1, 0),
('Anime', NULL, '480p', 4, 1, 0),
('Anime', 'SDTV', NULL, 5, 1, 0),
-- Disabled qualities
('Anime', 'DVD-R', NULL, 6, 0, 0),
('Anime', 'CAM', NULL, 7, 0, 0),
('Anime', 'DVDSCR', NULL, 8, 0, 0),
('Anime', 'HDTV-480p', NULL, 9, 0, 0),
('Anime', 'Raw-HD', NULL, 10, 0, 0),
('Anime', 'REGIONAL', NULL, 11, 0, 0),
('Anime', 'TELECINE', NULL, 12, 0, 0),
('Anime', 'TELESYNC', NULL, 13, 0, 0),
('Anime', 'Unknown', NULL, 14, 0, 0),
('Anime', 'WORKPRINT', NULL, 15, 0, 0);

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES
('Anime', '3D', 'all', -100),
('Anime', 'Bad Source', 'radarr', -100),
('Anime', 'DV Only (No HDR)', 'all', -100),
('Anime', 'Not Subtitles English', 'all', -50),
('Anime', '1.0 Mono', 'all', -5),
('Anime', '4KUHD', 'all', 10),
('Anime', '720/1080', 'all', 5),
('Anime', 'Dual Audio (Title Check)', 'all', 5),
('Anime', 'Dual Audio (Eng Jpn)', 'all', 5),
('Anime', 'Surround', 'all', 5),
('Anime', 'HDR', 'all', 5),
('Anime', 'Subtitles English', 'all', 1),
('Anime', 'Subs', 'all', 1);

INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES
('Anime', 'Original', 'simple');

-- =============================================================================
-- 3. Foreign
-- =============================================================================
INSERT INTO quality_profiles (name, description, upgrades_allowed, minimum_custom_format_score, upgrade_until_score, upgrade_score_increment)
VALUES ('Foreign', 'Main profile for Foreign (non English).   Will try to get Original Audio and English Audio (both).
Will upgrade to 4K. Surround Sound targeted.', 1, 0, 29, 1);

INSERT INTO quality_groups (quality_profile_name, name) VALUES
('Foreign', '480p'),
('Foreign', '720p'),
('Foreign', '1080p'),
('Foreign', '2160p');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name) VALUES
('Foreign', '480p', 'WEBDL-480p'),
('Foreign', '480p', 'WEBRip-480p'),
('Foreign', '480p', 'Bluray-480p'),
('Foreign', '480p', 'Bluray-576p'),
('Foreign', '720p', 'HDTV-720p'),
('Foreign', '720p', 'WEBDL-720p'),
('Foreign', '720p', 'WEBRip-720p'),
('Foreign', '720p', 'Bluray-720p'),
('Foreign', '1080p', 'HDTV-1080p'),
('Foreign', '1080p', 'WEBRip-1080p'),
('Foreign', '1080p', 'WEBDL-1080p'),
('Foreign', '1080p', 'Remux-1080p'),
('Foreign', '1080p', 'Bluray-1080p'),
('Foreign', '2160p', 'HDTV-2160p'),
('Foreign', '2160p', 'BR-DISK'),
('Foreign', '2160p', 'WEBDL-2160p'),
('Foreign', '2160p', 'WEBRip-2160p'),
('Foreign', '2160p', 'Remux-2160p'),
('Foreign', '2160p', 'Bluray-2160p');

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES
('Foreign', NULL, '2160p', 0, 1, 1),
('Foreign', NULL, '1080p', 1, 1, 0),
('Foreign', NULL, '720p', 2, 1, 0),
('Foreign', 'DVD', NULL, 3, 1, 0),
('Foreign', NULL, '480p', 4, 1, 0),
('Foreign', 'SDTV', NULL, 5, 1, 0),
-- Disabled qualities
('Foreign', 'DVD-R', NULL, 6, 0, 0),
('Foreign', 'CAM', NULL, 7, 0, 0),
('Foreign', 'DVDSCR', NULL, 8, 0, 0),
('Foreign', 'HDTV-480p', NULL, 9, 0, 0),
('Foreign', 'Raw-HD', NULL, 10, 0, 0),
('Foreign', 'REGIONAL', NULL, 11, 0, 0),
('Foreign', 'TELECINE', NULL, 12, 0, 0),
('Foreign', 'TELESYNC', NULL, 13, 0, 0),
('Foreign', 'Unknown', NULL, 14, 0, 0),
('Foreign', 'WORKPRINT', NULL, 15, 0, 0);

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES
('Foreign', '3D', 'all', -100),
('Foreign', 'Bad Source', 'radarr', -100),
('Foreign', 'DV Only (No HDR)', 'all', -100),
('Foreign', 'Not Subtitles English', 'all', -50),
('Foreign', '1.0 Mono', 'all', -5),
('Foreign', '4KUHD', 'all', 10),
('Foreign', '720/1080', 'all', 5),
('Foreign', 'Original Audio', 'all', 5),
('Foreign', 'English Audio', 'all', 5),
('Foreign', 'Surround', 'all', 5),
('Foreign', 'Dual Audio (Title Check)', 'all', 5),
('Foreign', 'HDR', 'all', 5),
('Foreign', 'Subtitles English', 'all', 1),
('Foreign', 'Subs', 'all', 1);

INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES
('Foreign', 'Any', 'simple');

-- =============================================================================
-- 4. Comedy
-- =============================================================================
INSERT INTO quality_profiles (name, description, upgrades_allowed, minimum_custom_format_score, upgrade_until_score, upgrade_score_increment)
VALUES ('Comedy', 'Simple comedy profile for stand up comedy
(no upgrades)', 0, 0, 1, 1);

INSERT INTO quality_groups (quality_profile_name, name) VALUES
('Comedy', '480p'),
('Comedy', '720p'),
('Comedy', '1080p');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name) VALUES
('Comedy', '480p', 'WEBDL-480p'),
('Comedy', '480p', 'WEBRip-480p'),
('Comedy', '480p', 'Bluray-576p'),
('Comedy', '480p', 'Bluray-480p'),
('Comedy', '720p', 'HDTV-720p'),
('Comedy', '720p', 'WEBDL-720p'),
('Comedy', '720p', 'WEBRip-720p'),
('Comedy', '720p', 'Bluray-720p'),
('Comedy', '1080p', 'HDTV-1080p'),
('Comedy', '1080p', 'WEBRip-1080p'),
('Comedy', '1080p', 'WEBDL-1080p'),
('Comedy', '1080p', 'Remux-1080p'),
('Comedy', '1080p', 'Bluray-1080p');

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES
('Comedy', NULL, '1080p', 0, 1, 0),
('Comedy', NULL, '720p', 1, 1, 1),
('Comedy', 'DVD', NULL, 2, 1, 0),
('Comedy', NULL, '480p', 3, 1, 0),
('Comedy', 'SDTV', NULL, 4, 1, 0),
-- Disabled qualities
('Comedy', 'DVD-R', NULL, 5, 0, 0),
('Comedy', 'Bluray-2160p', NULL, 6, 0, 0),
('Comedy', 'BR-DISK', NULL, 7, 0, 0),
('Comedy', 'CAM', NULL, 8, 0, 0),
('Comedy', 'DVDSCR', NULL, 9, 0, 0),
('Comedy', 'HDTV-2160p', NULL, 10, 0, 0),
('Comedy', 'HDTV-480p', NULL, 11, 0, 0),
('Comedy', 'Raw-HD', NULL, 12, 0, 0),
('Comedy', 'REGIONAL', NULL, 13, 0, 0),
('Comedy', 'Remux-2160p', NULL, 14, 0, 0),
('Comedy', 'TELECINE', NULL, 15, 0, 0),
('Comedy', 'TELESYNC', NULL, 16, 0, 0),
('Comedy', 'Unknown', NULL, 17, 0, 0),
('Comedy', 'WEBDL-2160p', NULL, 18, 0, 0),
('Comedy', 'WEBRip-2160p', NULL, 19, 0, 0),
('Comedy', 'WORKPRINT', NULL, 20, 0, 0);

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES
('Comedy', '3D', 'all', -1000),
('Comedy', 'HDR', 'all', -1000),
('Comedy', 'Bad Source', 'radarr', -1000),
('Comedy', '4KUHD', 'all', -1000),
('Comedy', '720/1080', 'all', 10);

INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES
('Comedy', 'English', 'simple');
