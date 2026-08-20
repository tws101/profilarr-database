-- =============================================================================
-- Custom Formats
-- =============================================================================

-- -----------------------------------------------------------------------------
-- 1. Surround
-- -----------------------------------------------------------------------------
INSERT INTO custom_formats (name, description, include_in_rename) VALUES
('Surround', 'High channel count audio (5.1+)', 0);

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES
('Surround', 'Surround', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES
('Surround', 'Surround', 'Surround');

-- -----------------------------------------------------------------------------
-- 2. Surround 6ch
-- -----------------------------------------------------------------------------
INSERT INTO custom_formats (name, description, include_in_rename) VALUES
('Surround 6ch', '5.1 / 6 channel audio', 0);

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES
('Surround 6ch', '5.1 Channel', 'release_title', 'all', 0, 0),
('Surround 6ch', '6 Channel', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES
('Surround 6ch', '5.1 Channel', '5.1 Channel'),
('Surround 6ch', '6 Channel', '6 Channel');

-- -----------------------------------------------------------------------------
-- 3. Surround 8ch
-- -----------------------------------------------------------------------------
INSERT INTO custom_formats (name, description, include_in_rename) VALUES
('Surround 8ch', '7.1 / 8 channel audio', 0);

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES
('Surround 8ch', '7.1 Channel', 'release_title', 'all', 0, 0),
('Surround 8ch', '8 Channel', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES
('Surround 8ch', '7.1 Channel', '7.1 Channel'),
('Surround 8ch', '8 Channel', '8 Channel');

-- -----------------------------------------------------------------------------
-- 4. 1.0 Mono
-- -----------------------------------------------------------------------------
INSERT INTO custom_formats (name, description, include_in_rename) VALUES
('1.0 Mono', 'Mono / 1.0 audio (excludes stereo and surround)', 0);

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES
('1.0 Mono', 'Mono', 'release_title', 'all', 0, 1),
('1.0 Mono', 'Not Stereo', 'release_title', 'all', 1, 1),
('1.0 Mono', 'Not Surround', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES
('1.0 Mono', 'Mono', 'Mono'),
('1.0 Mono', 'Not Stereo', 'Stereo'),
('1.0 Mono', 'Not Surround', 'Surround');

-- -----------------------------------------------------------------------------
-- 5. 2.0 Stereo
-- -----------------------------------------------------------------------------
INSERT INTO custom_formats (name, description, include_in_rename) VALUES
('2.0 Stereo', 'Stereo / 2.0 audio (excludes mono and surround)', 0);

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES
('2.0 Stereo', 'Stereo', 'release_title', 'all', 0, 1),
('2.0 Stereo', 'Not Mono', 'release_title', 'all', 1, 1),
('2.0 Stereo', 'Not Surround', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES
('2.0 Stereo', 'Stereo', 'Stereo'),
('2.0 Stereo', 'Not Mono', 'Mono'),
('2.0 Stereo', 'Not Surround', 'Surround');

-- -----------------------------------------------------------------------------
-- 6. HDR  (single condition — any HDR / HDR10 / HDR10+)
-- -----------------------------------------------------------------------------
INSERT INTO custom_formats (name, description, include_in_rename) VALUES
('HDR', 'HDR / HDR10 / HDR10+', 0);

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES
('HDR', 'HDR', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES
('HDR', 'HDR', 'HDR');

-- -----------------------------------------------------------------------------
-- 7. DV Only (No HDR)
-- -----------------------------------------------------------------------------
INSERT INTO custom_formats (name, description, include_in_rename) VALUES
('DV Only (No HDR)', 'Dolby Vision without any HDR fallback', 0);

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES
('DV Only (No HDR)', 'Dolby Vision', 'release_title', 'all', 0, 1),
('DV Only (No HDR)', 'No HDR', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES
('DV Only (No HDR)', 'Dolby Vision', 'Dolby Vision'),
('DV Only (No HDR)', 'No HDR', 'HDR');

-- -----------------------------------------------------------------------------
-- 8. 3D
-- -----------------------------------------------------------------------------
INSERT INTO custom_formats (name, description, include_in_rename) VALUES
('3D', '3D / SBS / Half-OU releases', 0);

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES
('3D', '3D', 'release_title', 'all', 0, 0),
('3D', 'BluRay3D', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES
('3D', '3D', '3D'),
('3D', 'BluRay3D', 'BluRay3D');

-- -----------------------------------------------------------------------------
-- 9. Subtitles English
-- -----------------------------------------------------------------------------
INSERT INTO custom_formats (name, description, include_in_rename) VALUES
('Subtitles English', 'English subtitles present in release name', 0);

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES
('Subtitles English', 'Subtitles in English', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES
('Subtitles English', 'Subtitles in English', 'Subtitles English');

-- -----------------------------------------------------------------------------
-- 10. Not Subtitles English
-- -----------------------------------------------------------------------------
INSERT INTO custom_formats (name, description, include_in_rename) VALUES
('Not Subtitles English', 'Used to check Tdarr post processing for: No English subtitles + HEVC + AC3/EAC3', 0);

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES
('Not Subtitles English', 'Not Subtitles in English', 'release_title', 'all', 1, 1),
('Not Subtitles English', 'HEVC', 'release_title', 'all', 0, 1),
('Not Subtitles English', 'AC3 or EAC3', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES
('Not Subtitles English', 'Not Subtitles in English', 'Subtitles English'),
('Not Subtitles English', 'HEVC', 'HEVC'),
('Not Subtitles English', 'AC3 or EAC3', 'AC3 or EAC3');

-- -----------------------------------------------------------------------------
-- 11. Subs
-- -----------------------------------------------------------------------------
INSERT INTO custom_formats (name, description, include_in_rename) VALUES
('Subs', 'Generic subtitle keyword in release name', 0);

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES
('Subs', 'Sub', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES
('Subs', 'Sub', 'Subs Keyword');

-- -----------------------------------------------------------------------------
-- 12. Dual Audio (Title Check)
-- -----------------------------------------------------------------------------
INSERT INTO custom_formats (name, description, include_in_rename) VALUES
('Dual Audio (Title Check)', 'Dual or Multi audio indicated in release title', 0);

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES
('Dual Audio (Title Check)', 'dual', 'release_title', 'all', 0, 0),
('Dual Audio (Title Check)', 'multi', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES
('Dual Audio (Title Check)', 'dual', 'Dual Audio'),
('Dual Audio (Title Check)', 'multi', 'Multi Audio');

-- -----------------------------------------------------------------------------
-- 13. Dual Audio (Eng Jpn)
-- -----------------------------------------------------------------------------
INSERT INTO custom_formats (name, description, include_in_rename) VALUES
('Dual Audio (Eng Jpn)', 'English + Japanese audio tracks', 0);

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES
('Dual Audio (Eng Jpn)', 'English', 'language', 'all', 0, 1),
('Dual Audio (Eng Jpn)', 'Japanese', 'language', 'all', 0, 1);

INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES
('Dual Audio (Eng Jpn)', 'English', 'English', 0),
('Dual Audio (Eng Jpn)', 'Japanese', 'Japanese', 0);

-- -----------------------------------------------------------------------------
-- 14. English Audio
-- -----------------------------------------------------------------------------
INSERT INTO custom_formats (name, description, include_in_rename) VALUES
('English Audio', 'English audio track present', 0);

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES
('English Audio', 'English', 'language', 'all', 0, 1);

INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES
('English Audio', 'English', 'English', 0);

-- -----------------------------------------------------------------------------
-- 15. Not English Audio
-- -----------------------------------------------------------------------------
INSERT INTO custom_formats (name, description, include_in_rename) VALUES
('Not English Audio', 'No English audio track', 0);

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES
('Not English Audio', 'NOT English', 'language', 'all', 1, 1);

INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES
('Not English Audio', 'NOT English', 'English', 0);

-- -----------------------------------------------------------------------------
-- 16. Original Audio
-- -----------------------------------------------------------------------------
INSERT INTO custom_formats (name, description, include_in_rename) VALUES
('Original Audio', 'Original language audio track', 0);

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES
('Original Audio', 'Original', 'language', 'all', 0, 1);

INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES
('Original Audio', 'Original', 'Original', 0);

-- -----------------------------------------------------------------------------
-- 17. 1080
-- -----------------------------------------------------------------------------
INSERT INTO custom_formats (name, description, include_in_rename) VALUES
('1080', '1080p resolution', 0);

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES
('1080', '1080', 'resolution', 'all', 0, 1);

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES
('1080', '1080', '1080p');

-- -----------------------------------------------------------------------------
-- 18. 4KUHD
-- -----------------------------------------------------------------------------
INSERT INTO custom_formats (name, description, include_in_rename) VALUES
('4KUHD', '2160p / 4K resolution', 0);

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES
('4KUHD', '4KUHD', 'resolution', 'all', 0, 1);

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES
('4KUHD', '4KUHD', '2160p');

-- -----------------------------------------------------------------------------
-- 19. 720/1080
-- -----------------------------------------------------------------------------
INSERT INTO custom_formats (name, description, include_in_rename) VALUES
('720/1080', '720p or 1080p resolution', 0);

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES
('720/1080', '720', 'resolution', 'all', 0, 0),
('720/1080', '1080', 'resolution', 'all', 0, 0);

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES
('720/1080', '720', '720p'),
('720/1080', '1080', '1080p');

-- -----------------------------------------------------------------------------
-- 20. Low Resolution
-- -----------------------------------------------------------------------------
INSERT INTO custom_formats (name, description, include_in_rename) VALUES
('Low Resolution', '360p / 480p / 576p', 0);

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES
('Low Resolution', '360', 'resolution', 'all', 0, 0),
('Low Resolution', '480', 'resolution', 'all', 0, 0),
('Low Resolution', '576', 'resolution', 'all', 0, 0);

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES
('Low Resolution', '360', '360p'),
('Low Resolution', '480', '480p'),
('Low Resolution', '576', '576p');

-- -----------------------------------------------------------------------------
-- 21. Bad Source  (Radarr only)
-- -----------------------------------------------------------------------------
INSERT INTO custom_formats (name, description, include_in_rename) VALUES
('Bad Source', 'CAM / TELESYNC / TELECINE sources', 0);

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES
('Bad Source', 'CAM', 'source', 'radarr', 0, 0),
('Bad Source', 'TELESYNC', 'source', 'radarr', 0, 0),
('Bad Source', 'TELECINE', 'source', 'radarr', 0, 0);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES
('Bad Source', 'CAM', 'cam'),
('Bad Source', 'TELESYNC', 'telesync'),
('Bad Source', 'TELECINE', 'telecine');
