-- =============================================================================
-- Regular Expressions
-- =============================================================================

INSERT INTO regular_expressions (name, pattern, description) VALUES
('Surround',         '[^0-9][5-9][ .][0-1]|[6-8]CH',                              'High channel count (5.1+ / 6-8CH style)'),
('Mono',             '[^0-9]1[ .]0|\bMono\b|\b1\.0\b',                            '1.0 mono audio detection'),
('Stereo',           '[^0-9]2[ .]0|\bStereo\b|\b2CH\b|\b2\.0\b',                  '2.0 stereo audio detection'),
('5.1 Channel',      '\b(5\.1|5 1|5CH|5\.1ch|5 ch|five point one)\b',             '5.1 channel audio'),
('6 Channel',        '\b(6\.0|6CH|6ch|6 channel|6 ch)\b',                         '6 channel audio'),
('7.1 Channel',      '\b(7\.1|7 1|7CH|7\.1ch|7 ch|seven point one)\b',            '7.1 channel audio'),
('8 Channel',        '\b(8\.0|8CH|8ch|8 channel|8 ch)\b',                         '8 channel audio'),
('HDR',              '\bHDR(10|\+|Plus)?\b',                                      'Any HDR variant (HDR / HDR10 / HDR10+)'),
('Dolby Vision',     '\b(DV|DoVi|Dolby.?Vision)\b',                               'Dolby Vision / DoVi'),
('Subtitles English','\bSubtitles\b.*?\bEN\b.*?$',                               'English subtitles present'),
('Dual Audio',       '(?i)(dual[ ._-]?audio)',                                   'Dual audio in release title'),
('Multi Audio',      '(?i)(multi[ ._-]?audio)',                                  'Multi audio in release title'),
('Subs Keyword',     '(?i)(sub)',                                                'Generic "sub" keyword'),
('AC3 or EAC3',      '\b(AC3)\b|\b(EAC3)\b|\b(E-AC-3)\b',                         'AC3 / EAC3 / E-AC-3 audio'),
('HEVC',             '\b(HEVC|h265|x265)\b',                                     'HEVC / x265 / h265'),
('BluRay3D',         '\b(BluRay3D)\b',                                           'BluRay3D source'),
('3D',               '\b(3d|sbs|half[ ._-]ou|half[ ._-]sbs)\b',                  '3D / SBS / half-OU / half-SBS');
