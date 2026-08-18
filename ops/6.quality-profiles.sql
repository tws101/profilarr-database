-- =============================================================================
-- Quality Profiles
-- Merged from Radarr data + Sonarr naming
-- Bad Source = -1000 on all profiles (Radarr master)
-- =============================================================================

-- -----------------------------------------------------------------------------
-- 1. Main
-- -----------------------------------------------------------------------------
INSERT INTO quality_profiles (name, description, upgrades_allowed, minimum_custom_format_score, upgrade_until_score, upgrade_score_increment)
VALUES ('Main', 'Standard 1080p profile', 1, 0, 14, 1);

-- Qualities (simplified groups)
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, position, enabled, upgrade_until) VALUES
('Main', 'SDTV', 1, 1, 0),
('Main', 'DVD', 2, 1, 0),
('Main', 'DVD-R', 3, 1, 0),
('Main', 'Bluray-480p', 4, 1, 0),
('Main', 'Bluray-720p', 5, 1, 0),
('Main', 'Bluray-1080p', 6, 1, 1);

-- Custom Format scores
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

-- -----------------------------------------------------------------------------
-- 2. Anime
-- -----------------------------------------------------------------------------
INSERT INTO quality_profiles (name, description, upgrades_allowed, minimum_custom_format_score, upgrade_until_score, upgrade_score_increment)
VALUES ('Anime', 'Anime 1080p profile with dual audio preference', 1, 0, 19, 1);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, position, enabled, upgrade_until) VALUES
('Anime', 'SDTV', 1, 1, 0),
('Anime', 'DVD', 2, 1, 0),
('Anime', 'DVD-R', 3, 1, 0),
('Anime', 'Bluray-480p', 4, 1, 0),
('Anime', 'Bluray-720p', 5, 1, 0),
('Anime', 'Bluray-1080p', 6, 1, 1);

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

-- -----------------------------------------------------------------------------
-- 3. Foreign
-- -----------------------------------------------------------------------------
INSERT INTO quality_profiles (name, description, upgrades_allowed, minimum_custom_format_score, upgrade_until_score, upgrade_score_increment)
VALUES ('Foreign', 'Foreign language 1080p profile', 1, 0, 24, 1);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, position, enabled, upgrade_until) VALUES
('Foreign', 'SDTV', 1, 1, 0),
('Foreign', 'DVD', 2, 1, 0),
('Foreign', 'DVD-R', 3, 1, 0),
('Foreign', 'Bluray-480p', 4, 1, 0),
('Foreign', 'Bluray-720p', 5, 1, 0),
('Foreign', 'Bluray-1080p', 6, 1, 1);

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

-- -----------------------------------------------------------------------------
-- 4. Comedy
-- -----------------------------------------------------------------------------
INSERT INTO quality_profiles (name, description, upgrades_allowed, minimum_custom_format_score, upgrade_until_score, upgrade_score_increment)
VALUES ('Comedy', 'Simple comedy profile (no upgrades)', 0, 0, 1, 1);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, position, enabled, upgrade_until) VALUES
('Comedy', 'SDTV', 1, 1, 0),
('Comedy', 'DVD', 2, 1, 0),
('Comedy', 'DVD-R', 3, 1, 0),
('Comedy', 'Bluray-480p', 4, 1, 0),
('Comedy', 'Bluray-720p', 5, 1, 0),
('Comedy', 'Bluray-1080p', 6, 1, 1);

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES
('Comedy', '3D', 'all', -1000),
('Comedy', 'HDR', 'all', -1000),
('Comedy', 'Bad Source', 'all', -1000),
('Comedy', '4KUHD', 'all', -1000),
('Comedy', '1080', 'all', 10);

-- -----------------------------------------------------------------------------
-- 5. Ultra-HD
-- -----------------------------------------------------------------------------
INSERT INTO quality_profiles (name, description, upgrades_allowed, minimum_custom_format_score, upgrade_until_score, upgrade_score_increment)
VALUES ('Ultra-HD', '4K profile (HDR slightly penalized)', 1, 0, 14, 1);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, position, enabled, upgrade_until) VALUES
('Ultra-HD', 'Bluray-2160p', 1, 1, 1);

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES
('Ultra-HD', '720/1080', 'all', -1000),
('Ultra-HD', 'DV Only (No HDR)', 'all', -1000),
('Ultra-HD', '3D', 'all', -1000),
('Ultra-HD', 'Low Resolution', 'all', -1000),
('Ultra-HD', 'Bad Source', 'all', -1000),
('Ultra-HD', 'Not English Audio', 'all', -100),
('Ultra-HD', '1.0 Mono', 'all', -50),
('Ultra-HD', '4KUHD', 'all', 10),
('Ultra-HD', 'HDR', 'all', -5),
('Ultra-HD', 'Surround', 'all', 5),
('Ultra-HD', 'Subtitles English', 'all', 1);

-- -----------------------------------------------------------------------------
-- 6. Ultra-HD-HDR
-- -----------------------------------------------------------------------------
INSERT INTO quality_profiles (name, description, upgrades_allowed, minimum_custom_format_score, upgrade_until_score, upgrade_score_increment)
VALUES ('Ultra-HD-HDR', '4K profile with HDR preference', 1, 0, 19, 1);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, position, enabled, upgrade_until) VALUES
('Ultra-HD-HDR', 'Bluray-2160p', 1, 1, 1);

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES
('Ultra-HD-HDR', '720/1080', 'all', -1000),
('Ultra-HD-HDR', 'DV Only (No HDR)', 'all', -1000),
('Ultra-HD-HDR', '3D', 'all', -1000),
('Ultra-HD-HDR', 'Low Resolution', 'all', -1000),
('Ultra-HD-HDR', 'Bad Source', 'all', -1000),
('Ultra-HD-HDR', 'Not English Audio', 'all', -50),
('Ultra-HD-HDR', '1.0 Mono', 'all', -50),
('Ultra-HD-HDR', '4KUHD', 'all', 10),
('Ultra-HD-HDR', 'HDR', 'all', 5),
('Ultra-HD-HDR', 'Surround', 'all', 5),
('Ultra-HD-HDR', 'Subtitles English', 'all', 1);

-- -----------------------------------------------------------------------------
-- 7. Ultra-HD-HDR - Anime
-- -----------------------------------------------------------------------------
INSERT INTO quality_profiles (name, description, upgrades_allowed, minimum_custom_format_score, upgrade_until_score, upgrade_score_increment)
VALUES ('Ultra-HD-HDR - Anime', '4K Anime profile with dual audio + HDR preference', 1, 0, 24, 1);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, position, enabled, upgrade_until) VALUES
('Ultra-HD-HDR - Anime', 'Bluray-2160p', 1, 1, 1);

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES
('Ultra-HD-HDR - Anime', '720/1080', 'all', -1000),
('Ultra-HD-HDR - Anime', 'DV Only (No HDR)', 'all', -1000),
('Ultra-HD-HDR - Anime', '3D', 'all', -1000),
('Ultra-HD-HDR - Anime', 'Low Resolution', 'all', -1000),
('Ultra-HD-HDR - Anime', 'Bad Source', 'all', -1000),
('Ultra-HD-HDR - Anime', 'Not Subtitles English', 'all', -50),
('Ultra-HD-HDR - Anime', '1.0 Mono', 'all', -50),
('Ultra-HD-HDR - Anime', '4KUHD', 'all', 10),
('Ultra-HD-HDR - Anime', 'Dual Audio (Title Check)', 'all', 5),
('Ultra-HD-HDR - Anime', 'Dual Audio (Eng Jpn)', 'all', 5),
('Ultra-HD-HDR - Anime', 'HDR', 'all', 5),
('Ultra-HD-HDR - Anime', 'Surround', 'all', 5),
('Ultra-HD-HDR - Anime', 'Subtitles English', 'all', 1),
('Ultra-HD-HDR - Anime', 'Subs', 'all', 1);

-- -----------------------------------------------------------------------------
-- 8. Ultra-HD-HDR - Foreign
-- -----------------------------------------------------------------------------
INSERT INTO quality_profiles (name, description, upgrades_allowed, minimum_custom_format_score, upgrade_until_score, upgrade_score_increment)
VALUES ('Ultra-HD-HDR - Foreign', '4K Foreign profile with original/English audio + HDR preference', 1, 0, 29, 1);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, position, enabled, upgrade_until) VALUES
('Ultra-HD-HDR - Foreign', 'Bluray-2160p', 1, 1, 1);

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES
('Ultra-HD-HDR - Foreign', '720/1080', 'all', -1000),
('Ultra-HD-HDR - Foreign', 'DV Only (No HDR)', 'all', -1000),
('Ultra-HD-HDR - Foreign', '3D', 'all', -1000),
('Ultra-HD-HDR - Foreign', 'Low Resolution', 'all', -1000),
('Ultra-HD-HDR - Foreign', 'Bad Source', 'all', -1000),
('Ultra-HD-HDR - Foreign', 'Not Subtitles English', 'all', -50),
('Ultra-HD-HDR - Foreign', '1.0 Mono', 'all', -50),
('Ultra-HD-HDR - Foreign', '4KUHD', 'all', 10),
('Ultra-HD-HDR - Foreign', 'Original Audio', 'all', 5),
('Ultra-HD-HDR - Foreign', 'English Audio', 'all', 5),
('Ultra-HD-HDR - Foreign', 'HDR', 'all', 5),
('Ultra-HD-HDR - Foreign', 'Surround', 'all', 5),
('Ultra-HD-HDR - Foreign', 'Subtitles English', 'all', 1),
('Ultra-HD-HDR - Foreign', 'Subs', 'all', 1);
