-- =============================================================================
-- Quality Profiles
-- Final state after description updates, renames, and quality restructuring
-- Bad Source = -1000 on all profiles
-- =============================================================================

-- =============================================================================
-- 1. Main
-- =============================================================================
INSERT INTO quality_profiles (name, description, upgrades_allowed, minimum_custom_format_score, upgrade_until_score, upgrade_score_increment)
VALUES ('Main', 'HD profile for English.

Will upgrade to 1080p.

Not for 4K.', 1, 0, 14, 1);

INSERT INTO quality_groups (quality_profile_name, name) VALUES
('Main', 'DVD'),
('Main', '480p'),
('Main', '720p'),
('Main', '1080p');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name) VALUES
('Main', 'DVD', 'DVD'),
('Main', 'DVD', 'DVD-R'),
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
('Main', '1080p', 'Bluray-1080p');

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES
('Main', NULL, '1080p', 0, 1, 1),
('Main', NULL, '720p', 1, 1, 0),
('Main', NULL, 'DVD', 2, 1, 0),
('Main', NULL, '480p', 3, 1, 0),
('Main', 'SDTV', NULL, 4, 1, 0),
-- Disabled qualities (kept for completeness / future use)
('Main', 'Bluray-2160p', NULL, 5, 0, 0),
('Main', 'BR-DISK', NULL, 6, 0, 0),
('Main', 'CAM', NULL, 7, 0, 0),
('Main', 'DVDSCR', NULL, 8, 0, 0),
('Main', 'HDTV-2160p', NULL, 9, 0, 0),
('Main', 'HDTV-480p', NULL, 10, 0, 0),
('Main', 'Raw-HD', NULL, 11, 0, 0),
('Main', 'REGIONAL', NULL, 12, 0, 0),
('Main', 'Remux-2160p', NULL, 13, 0, 0),
('Main', 'TELECINE', NULL, 14, 0, 0),
('Main', 'TELESYNC', NULL, 15, 0, 0),
('Main', 'Unknown', NULL, 16, 0, 0),
('Main', 'WEBDL-2160p', NULL, 17, 0, 0),
('Main', 'WEBRip-2160p', NULL, 18, 0, 0),
('Main', 'WORKPRINT', NULL, 19, 0, 0);

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES
('Main', '3D', 'all', -1000),
('Main', 'HDR', 'all', -1000),
('Main', 'Bad Source', 'all', -1000),
('Main', '4KUHD', 'all', -1000),
('Main', 'Not English Audio', 'all', -100),
('Main', '1.0 Mono', 'all', -50),
('Main', '1080', 'all', 10),
('Main', 'Surround', 'all', 5),
('Main', 'Subtitles English', 'all', 1);

INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES
('Main', 'English', 'simple');

-- =============================================================================
-- 2. Anime
-- =============================================================================
INSERT INTO quality_profiles (name, description, upgrades_allowed, minimum_custom_format_score, upgrade_until_score, upgrade_score_increment)
VALUES ('Anime', 'Anime HD profile with dual audio preference.  

Will upgrade to 1080p.

Not for 4K', 1, 0, 19, 1);

INSERT INTO quality_groups (quality_profile_name, name) VALUES
('Anime', 'DVD'),
('Anime', '480p'),
('Anime', '720p'),
('Anime', '1080p');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name) VALUES
('Anime', 'DVD', 'DVD'),
('Anime', 'DVD', 'DVD-R'),
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
('Anime', '1080p', 'Bluray-1080p');

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES
('Anime', NULL, '1080p', 0, 1, 1),
('Anime', NULL, '720p', 1, 1, 0),
('Anime', NULL, 'DVD', 2, 1, 0),
('Anime', NULL, '480p', 3, 1, 0),
('Anime', 'SDTV', NULL, 4, 1, 0),
-- Disabled qualities
('Anime', 'Bluray-2160p', NULL, 5, 0, 0),
('Anime', 'BR-DISK', NULL, 6, 0, 0),
('Anime', 'CAM', NULL, 7, 0, 0),
('Anime', 'DVDSCR', NULL, 8, 0, 0),
('Anime', 'HDTV-2160p', NULL, 9, 0, 0),
('Anime', 'HDTV-480p', NULL, 10, 0, 0),
('Anime', 'Raw-HD', NULL, 11, 0, 0),
('Anime', 'REGIONAL', NULL, 12, 0, 0),
('Anime', 'Remux-2160p', NULL, 13, 0, 0),
('Anime', 'TELECINE', NULL, 14, 0, 0),
('Anime', 'TELESYNC', NULL, 15, 0, 0),
('Anime', 'Unknown', NULL, 16, 0, 0),
('Anime', 'WEBDL-2160p', NULL, 17, 0, 0),
('Anime', 'WEBRip-2160p', NULL, 18, 0, 0),
('Anime', 'WORKPRINT', NULL, 19, 0, 0);

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES
('Anime', '3D', 'all', -1000),
('Anime', 'HDR', 'all', -1000),
('Anime', 'Bad Source', 'all', -1000),
('Anime', '4KUHD', 'all', -1000),
('Anime', 'Not Subtitles English', 'all', -50),
('Anime', '1.0 Mono', 'all', -50),
('Anime', '1080', 'all', 10),
('Anime', 'Dual Audio (Title Check)', 'all', 5),
('Anime', 'Dual Audio (Eng Jpn)', 'all', 5),
('Anime', 'Surround', 'all', 5),
('Anime', 'Subtitles English', 'all', 1),
('Anime', 'Subs', 'all', 1);

INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES
('Anime', 'Original', 'simple');

-- =============================================================================
-- 3. Foreign
-- =============================================================================
INSERT INTO quality_profiles (name, description, upgrades_allowed, minimum_custom_format_score, upgrade_until_score, upgrade_score_increment)
VALUES ('Foreign', 'HD profile for Foreign (non English).   Will try to get Original Audio and English Audio (both).

Will upgrade to 1080p.

Not for 4K.', 1, 0, 24, 1);

INSERT INTO quality_groups (quality_profile_name, name) VALUES
('Foreign', 'DVD'),
('Foreign', '480p'),
('Foreign', '720p'),
('Foreign', '1080p');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name) VALUES
('Foreign', 'DVD', 'DVD'),
('Foreign', 'DVD', 'DVD-R'),
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
('Foreign', '1080p', 'Bluray-1080p');

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES
('Foreign', NULL, '1080p', 0, 1, 1),
('Foreign', NULL, '720p', 1, 1, 0),
('Foreign', NULL, 'DVD', 2, 1, 0),
('Foreign', NULL, '480p', 3, 1, 0),
('Foreign', 'SDTV', NULL, 4, 1, 0),
-- Disabled qualities
('Foreign', 'Bluray-2160p', NULL, 5, 0, 0),
('Foreign', 'BR-DISK', NULL, 6, 0, 0),
('Foreign', 'CAM', NULL, 7, 0, 0),
('Foreign', 'DVDSCR', NULL, 8, 0, 0),
('Foreign', 'HDTV-2160p', NULL, 9, 0, 0),
('Foreign', 'HDTV-480p', NULL, 10, 0, 0),
('Foreign', 'Raw-HD', NULL, 11, 0, 0),
('Foreign', 'REGIONAL', NULL, 12, 0, 0),
('Foreign', 'Remux-2160p', NULL, 13, 0, 0),
('Foreign', 'TELECINE', NULL, 14, 0, 0),
('Foreign', 'TELESYNC', NULL, 15, 0, 0),
('Foreign', 'Unknown', NULL, 16, 0, 0),
('Foreign', 'WEBDL-2160p', NULL, 17, 0, 0),
('Foreign', 'WEBRip-2160p', NULL, 18, 0, 0),
('Foreign', 'WORKPRINT', NULL, 19, 0, 0);

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES
('Foreign', '3D', 'all', -1000),
('Foreign', 'HDR', 'all', -1000),
('Foreign', 'Bad Source', 'all', -1000),
('Foreign', '4KUHD', 'all', -1000),
('Foreign', 'Not Subtitles English', 'all', -50),
('Foreign', '1.0 Mono', 'all', -50),
('Foreign', '1080', 'all', 10),
('Foreign', 'Original Audio', 'all', 5),
('Foreign', 'English Audio', 'all', 5),
('Foreign', 'Surround', 'all', 5),
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
('Comedy', 'DVD'),
('Comedy', '480p'),
('Comedy', '720p'),
('Comedy', '1080p');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name) VALUES
('Comedy', 'DVD', 'DVD'),
('Comedy', 'DVD', 'DVD-R'),
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
('Comedy', NULL, 'DVD', 2, 1, 0),
('Comedy', NULL, '480p', 3, 1, 0),
('Comedy', 'SDTV', NULL, 4, 1, 0),
-- Disabled qualities
('Comedy', 'Bluray-2160p', NULL, 5, 0, 0),
('Comedy', 'BR-DISK', NULL, 6, 0, 0),
('Comedy', 'CAM', NULL, 7, 0, 0),
('Comedy', 'DVDSCR', NULL, 8, 0, 0),
('Comedy', 'HDTV-2160p', NULL, 9, 0, 0),
('Comedy', 'HDTV-480p', NULL, 10, 0, 0),
('Comedy', 'Raw-HD', NULL, 11, 0, 0),
('Comedy', 'REGIONAL', NULL, 12, 0, 0),
('Comedy', 'Remux-2160p', NULL, 13, 0, 0),
('Comedy', 'TELECINE', NULL, 14, 0, 0),
('Comedy', 'TELESYNC', NULL, 15, 0, 0),
('Comedy', 'Unknown', NULL, 16, 0, 0),
('Comedy', 'WEBDL-2160p', NULL, 17, 0, 0),
('Comedy', 'WEBRip-2160p', NULL, 18, 0, 0),
('Comedy', 'WORKPRINT', NULL, 19, 0, 0);

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES
('Comedy', '3D', 'all', -1000),
('Comedy', 'HDR', 'all', -1000),
('Comedy', 'Bad Source', 'all', -1000),
('Comedy', '4KUHD', 'all', -1000),
('Comedy', '1080', 'all', 10);

INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES
('Comedy', 'English', 'simple');

-- =============================================================================
-- 5. 4K SDR  (formerly Ultra-HD)
-- =============================================================================
INSERT INTO quality_profiles (name, description, upgrades_allowed, minimum_custom_format_score, upgrade_until_score, upgrade_score_increment)
VALUES ('4K SDR', '4K profile for English.  SDR ONLY

This is for special cases where one would want an SDR version.', 1, 0, 14, 1);

INSERT INTO quality_groups (quality_profile_name, name) VALUES
('4K SDR', '2160p');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name) VALUES
('4K SDR', '2160p', 'HDTV-2160p'),
('4K SDR', '2160p', 'BR-DISK'),
('4K SDR', '2160p', 'WEBDL-2160p'),
('4K SDR', '2160p', 'WEBRip-2160p'),
('4K SDR', '2160p', 'Remux-2160p'),
('4K SDR', '2160p', 'Bluray-2160p');

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES
('4K SDR', NULL, '2160p', 1, 1, 1);

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES
('4K SDR', '720/1080', 'all', -1000),
('4K SDR', 'DV Only (No HDR)', 'all', -1000),
('4K SDR', '3D', 'all', -1000),
('4K SDR', 'Low Resolution', 'all', -1000),
('4K SDR', 'Bad Source', 'all', -1000),
('4K SDR', 'Not English Audio', 'all', -100),
('4K SDR', '1.0 Mono', 'all', -50),
('4K SDR', '4KUHD', 'all', 10),
('4K SDR', 'HDR', 'all', -5),
('4K SDR', 'Surround', 'all', 5),
('4K SDR', 'Subtitles English', 'all', 1);

INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES
('4K SDR', 'English', 'simple');

-- =============================================================================
-- 6. 4K HDR - Main  (formerly Ultra-HD-HDR)
-- =============================================================================
INSERT INTO quality_profiles (name, description, upgrades_allowed, minimum_custom_format_score, upgrade_until_score, upgrade_score_increment)
VALUES ('4K HDR - Main', '4K profile for English.  

HDR and 8 channel Audio are prioritized.', 1, 0, 19, 1);

INSERT INTO quality_groups (quality_profile_name, name) VALUES
('4K HDR - Main', '2160p');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name) VALUES
('4K HDR - Main', '2160p', 'HDTV-2160p'),
('4K HDR - Main', '2160p', 'BR-DISK'),
('4K HDR - Main', '2160p', 'Bluray-2160p'),
('4K HDR - Main', '2160p', 'WEBDL-2160p'),
('4K HDR - Main', '2160p', 'WEBRip-2160p'),
('4K HDR - Main', '2160p', 'Remux-2160p');

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES
('4K HDR - Main', NULL, '2160p', 1, 1, 1);

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES
('4K HDR - Main', '720/1080', 'all', -1000),
('4K HDR - Main', 'DV Only (No HDR)', 'all', -1000),
('4K HDR - Main', '3D', 'all', -1000),
('4K HDR - Main', 'Low Resolution', 'all', -1000),
('4K HDR - Main', 'Bad Source', 'all', -1000),
('4K HDR - Main', 'Not English Audio', 'all', -50),
('4K HDR - Main', '1.0 Mono', 'all', -50),
('4K HDR - Main', '4KUHD', 'all', 10),
('4K HDR - Main', 'HDR', 'all', 5),
('4K HDR - Main', 'Surround', 'all', 5),
('4K HDR - Main', 'Subtitles English', 'all', 1);

INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES
('4K HDR - Main', 'English', 'simple');

-- =============================================================================
-- 7. 4K HDR - Anime  (formerly Ultra-HD-HDR - Anime)
-- =============================================================================
INSERT INTO quality_profiles (name, description, upgrades_allowed, minimum_custom_format_score, upgrade_until_score, upgrade_score_increment)
VALUES ('4K HDR - Anime', 'Anime 4K profile with dual audio preference.

HDR is prioritized.', 1, 0, 24, 1);

INSERT INTO quality_groups (quality_profile_name, name) VALUES
('4K HDR - Anime', '2160p');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name) VALUES
('4K HDR - Anime', '2160p', 'HDTV-2160p'),
('4K HDR - Anime', '2160p', 'BR-DISK'),
('4K HDR - Anime', '2160p', 'WEBDL-2160p'),
('4K HDR - Anime', '2160p', 'WEBRip-2160p'),
('4K HDR - Anime', '2160p', 'Remux-2160p'),
('4K HDR - Anime', '2160p', 'Bluray-2160p');

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES
('4K HDR - Anime', NULL, '2160p', 1, 1, 1);

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES
('4K HDR - Anime', '720/1080', 'all', -1000),
('4K HDR - Anime', 'DV Only (No HDR)', 'all', -1000),
('4K HDR - Anime', '3D', 'all', -1000),
('4K HDR - Anime', 'Low Resolution', 'all', -1000),
('4K HDR - Anime', 'Bad Source', 'all', -1000),
('4K HDR - Anime', 'Not Subtitles English', 'all', -50),
('4K HDR - Anime', '1.0 Mono', 'all', -50),
('4K HDR - Anime', '4KUHD', 'all', 10),
('4K HDR - Anime', 'Dual Audio (Title Check)', 'all', 5),
('4K HDR - Anime', 'Dual Audio (Eng Jpn)', 'all', 5),
('4K HDR - Anime', 'HDR', 'all', 5),
('4K HDR - Anime', 'Surround', 'all', 5),
('4K HDR - Anime', 'Subtitles English', 'all', 1),
('4K HDR - Anime', 'Subs', 'all', 1);

INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES
('4K HDR - Anime', 'Original', 'simple');

-- =============================================================================
-- 8. 4K HDR - Foreign  (formerly Ultra-HD-HDR - Foreign)
-- =============================================================================
INSERT INTO quality_profiles (name, description, upgrades_allowed, minimum_custom_format_score, upgrade_until_score, upgrade_score_increment)
VALUES ('4K HDR - Foreign', '4K profile for Foreign (non English).   Will try to get Original Audio and English Audio (both).

HDR preference', 1, 0, 29, 1);

INSERT INTO quality_groups (quality_profile_name, name) VALUES
('4K HDR - Foreign', '2160p');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name) VALUES
('4K HDR - Foreign', '2160p', 'HDTV-2160p'),
('4K HDR - Foreign', '2160p', 'BR-DISK'),
('4K HDR - Foreign', '2160p', 'WEBDL-2160p'),
('4K HDR - Foreign', '2160p', 'WEBRip-2160p'),
('4K HDR - Foreign', '2160p', 'Remux-2160p'),
('4K HDR - Foreign', '2160p', 'Bluray-2160p');

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES
('4K HDR - Foreign', NULL, '2160p', 1, 1, 1);

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES
('4K HDR - Foreign', '720/1080', 'all', -1000),
('4K HDR - Foreign', 'DV Only (No HDR)', 'all', -1000),
('4K HDR - Foreign', '3D', 'all', -1000),
('4K HDR - Foreign', 'Low Resolution', 'all', -1000),
('4K HDR - Foreign', 'Bad Source', 'all', -1000),
('4K HDR - Foreign', 'Not Subtitles English', 'all', -50),
('4K HDR - Foreign', '1.0 Mono', 'all', -50),
('4K HDR - Foreign', '4KUHD', 'all', 10),
('4K HDR - Foreign', 'Original Audio', 'all', 5),
('4K HDR - Foreign', 'English Audio', 'all', 5),
('4K HDR - Foreign', 'HDR', 'all', 5),
('4K HDR - Foreign', 'Surround', 'all', 5),
('4K HDR - Foreign', 'Subtitles English', 'all', 1),
('4K HDR - Foreign', 'Subs', 'all', 1);

INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES
('4K HDR - Foreign', 'Any', 'simple');
