-- =============================================================================
-- Regular Expressions
-- Generated from existing Radarr/Sonarr Custom Formats
-- Standardized HDR patterns + consolidated Surround pattern
-- =============================================================================

INSERT INTO regular_expressions (name, pattern, description) VALUES
('Surround', '[^0-9][5-9][ .][0-1]|[6-8]CH', 'High channel count (5.1+ / 6-8CH style)'),
('Mono', '[^0-9]1[ .]0|\bMono\b|\[PCM \]', '1.0 mono audio detection'),
('Stereo', '[^0-9]2[ .]0|\bStereo\b|\b2CH\b|\b2\.0\b', '2.0 stereo audio detection'),
('5.1 Channel', '\b(5\.1|5 1|5CH|5\.1ch|six point one|6\.0|6ch)\b', '5.1 / 6 channel audio'),
('6 Channel', '\b(6CH|6 channel|6\.0|6ch)\b', '6 channel audio'),
('7.1 Channel', '\b(7\.1|7 1|7CH|seven point one|7\.1ch)\b', '7.1 channel audio'),
('8 Channel', '\b(8CH|8 channel|8\.0|8ch)\b', '8 channel audio'),
('HDR', '\bHDR(?!10|10\+|Plus|\+)', 'Pure HDR (excludes HDR10 / HDR10+)'),
('HDR10', '\bHDR10(\b| Plus|Plus\b| Plus\b|[^a-zA-Z0-9])', 'HDR10'),
('HDR10+', '\bHDR10(\+| Plus|Plus\b)', 'HDR10+ / HDR10 Plus'),
('Dolby Vision', '\b(DV|DoVi|Dolby.?Vision)\b', 'Dolby Vision / DoVi'),
('Any HDR', '\bHDR(10|\+|Plus)?\b', 'Any HDR variant (used for negation in DV Only)'),
('Subtitles English', '\bSubtitles\b.*?\bEN\b.*?$', 'English subtitles present'),
('Dual Audio', '(?i)(dual[ ._-]?audio)', 'Dual audio in release title'),
('Multi Audio', '(?i)(multi[ ._-]?audio)', 'Multi audio in release title'),
('Subs Keyword', '(?i)(sub)', 'Generic "sub" keyword'),
('AC3 or EAC3', '\b(AC3)\b|\b(EAC3)\b|\b(E-AC-3)\b', 'AC3 / EAC3 / E-AC-3 audio'),
('HEVC', '\b(h265)\b|\b(x265)\b', 'HEVC / x265 / h265'),
('BluRay3D', '\b(BluRay3D)\b', 'BluRay3D source'),
('3D', '\b3d|sbs|half[ .-]ou|half[ .-]sbs\b', '3D / SBS / half-OU / half-SBS');
