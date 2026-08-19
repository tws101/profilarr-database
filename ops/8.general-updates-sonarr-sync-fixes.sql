-- @operation: export
-- @entity: batch
-- @name: general updates sonarr sync fixes
-- @exportedAt: 2026-08-19T14:39:04.217Z
-- @opIds: 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363

-- --- BEGIN op 322 ( update custom_format "Bad Source" )
UPDATE custom_format_conditions
SET arr_type = 'radarr'
WHERE custom_format_name = 'Bad Source'
  AND name = 'CAM'
  AND type = 'source'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 322

-- --- BEGIN op 323 ( update custom_format "Bad Source" )
UPDATE custom_format_conditions
SET arr_type = 'radarr'
WHERE custom_format_name = 'Bad Source'
  AND name = 'TELECINE'
  AND type = 'source'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 323

-- --- BEGIN op 324 ( update custom_format "Bad Source" )
UPDATE custom_format_conditions
SET arr_type = 'radarr'
WHERE custom_format_name = 'Bad Source'
  AND name = 'TELESYNC'
  AND type = 'source'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 324

-- --- BEGIN op 325 ( update custom_format "Bad Source" )
DELETE FROM condition_sources WHERE custom_format_name = 'Bad Source' AND condition_name = 'CAM' AND source = 'CAM';

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Bad Source', 'CAM', 'cam');
-- --- END op 325

-- --- BEGIN op 326 ( update custom_format "Bad Source" )
DELETE FROM condition_sources WHERE custom_format_name = 'Bad Source' AND condition_name = 'TELECINE' AND source = 'TELECINE';

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Bad Source', 'TELECINE', 'telecine');
-- --- END op 326

-- --- BEGIN op 327 ( update custom_format "Bad Source" )
DELETE FROM condition_sources WHERE custom_format_name = 'Bad Source' AND condition_name = 'TELESYNC' AND source = 'TELESYNC';

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Bad Source', 'TELESYNC', 'telesync');
-- --- END op 327

-- --- BEGIN op 328 ( update quality_profile "4K HDR - Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K HDR - Anime', 'Bad Source', 'radarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K HDR - Anime'
    AND custom_format_name = 'Bad Source'
    AND arr_type = 'radarr'
);
-- --- END op 328

-- --- BEGIN op 329 ( update quality_profile "4K HDR - Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K HDR - Anime', 'Bad Source', 'sonarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K HDR - Anime'
    AND custom_format_name = 'Bad Source'
    AND arr_type = 'sonarr'
);
-- --- END op 329

-- --- BEGIN op 330 ( update quality_profile "4K HDR - Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '4K HDR - Anime'
  AND custom_format_name = 'Bad Source'
  AND arr_type = 'all'
  AND score = -1000;
-- --- END op 330

-- --- BEGIN op 331 ( update quality_profile "4K HDR - Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '4K HDR - Anime'
  AND custom_format_name = 'Bad Source'
  AND arr_type = 'sonarr'
  AND score = -1000;
-- --- END op 331

-- --- BEGIN op 332 ( update quality_profile "4K HDR - Foreign" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K HDR - Foreign', 'Bad Source', 'radarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K HDR - Foreign'
    AND custom_format_name = 'Bad Source'
    AND arr_type = 'radarr'
);
-- --- END op 332

-- --- BEGIN op 333 ( update quality_profile "4K HDR - Foreign" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K HDR - Foreign', 'Bad Source', 'sonarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K HDR - Foreign'
    AND custom_format_name = 'Bad Source'
    AND arr_type = 'sonarr'
);
-- --- END op 333

-- --- BEGIN op 334 ( update quality_profile "4K HDR - Foreign" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '4K HDR - Foreign'
  AND custom_format_name = 'Bad Source'
  AND arr_type = 'all'
  AND score = -1000;
-- --- END op 334

-- --- BEGIN op 335 ( update quality_profile "4K HDR - Foreign" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '4K HDR - Foreign'
  AND custom_format_name = 'Bad Source'
  AND arr_type = 'sonarr'
  AND score = -1000;
-- --- END op 335

-- --- BEGIN op 336 ( update quality_profile "4K HDR - Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K HDR - Main', 'Bad Source', 'radarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K HDR - Main'
    AND custom_format_name = 'Bad Source'
    AND arr_type = 'radarr'
);
-- --- END op 336

-- --- BEGIN op 337 ( update quality_profile "4K HDR - Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K HDR - Main', 'Bad Source', 'sonarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K HDR - Main'
    AND custom_format_name = 'Bad Source'
    AND arr_type = 'sonarr'
);
-- --- END op 337

-- --- BEGIN op 338 ( update quality_profile "4K HDR - Main" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '4K HDR - Main'
  AND custom_format_name = 'Bad Source'
  AND arr_type = 'all'
  AND score = -1000;
-- --- END op 338

-- --- BEGIN op 339 ( update quality_profile "4K HDR - Main" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '4K HDR - Main'
  AND custom_format_name = 'Bad Source'
  AND arr_type = 'sonarr'
  AND score = -1000;
-- --- END op 339

-- --- BEGIN op 340 ( update quality_profile "4K SDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K SDR', 'Bad Source', 'radarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K SDR'
    AND custom_format_name = 'Bad Source'
    AND arr_type = 'radarr'
);
-- --- END op 340

-- --- BEGIN op 341 ( update quality_profile "4K SDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K SDR', 'Bad Source', 'sonarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K SDR'
    AND custom_format_name = 'Bad Source'
    AND arr_type = 'sonarr'
);
-- --- END op 341

-- --- BEGIN op 342 ( update quality_profile "4K SDR" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '4K SDR'
  AND custom_format_name = 'Bad Source'
  AND arr_type = 'all'
  AND score = -1000;
-- --- END op 342

-- --- BEGIN op 343 ( update quality_profile "4K SDR" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '4K SDR'
  AND custom_format_name = 'Bad Source'
  AND arr_type = 'sonarr'
  AND score = -1000;
-- --- END op 343

-- --- BEGIN op 344 ( update quality_profile "Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Anime', 'Bad Source', 'radarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Anime'
    AND custom_format_name = 'Bad Source'
    AND arr_type = 'radarr'
);
-- --- END op 344

-- --- BEGIN op 345 ( update quality_profile "Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Anime', 'Bad Source', 'sonarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Anime'
    AND custom_format_name = 'Bad Source'
    AND arr_type = 'sonarr'
);
-- --- END op 345

-- --- BEGIN op 346 ( update quality_profile "Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Anime'
  AND custom_format_name = 'Bad Source'
  AND arr_type = 'all'
  AND score = -1000;
-- --- END op 346

-- --- BEGIN op 347 ( update quality_profile "Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Anime'
  AND custom_format_name = 'Bad Source'
  AND arr_type = 'sonarr'
  AND score = -1000;
-- --- END op 347

-- --- BEGIN op 348 ( update quality_profile "Comedy" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Comedy', 'Bad Source', 'radarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Comedy'
    AND custom_format_name = 'Bad Source'
    AND arr_type = 'radarr'
);
-- --- END op 348

-- --- BEGIN op 349 ( update quality_profile "Comedy" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Comedy', 'Bad Source', 'sonarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Comedy'
    AND custom_format_name = 'Bad Source'
    AND arr_type = 'sonarr'
);
-- --- END op 349

-- --- BEGIN op 350 ( update quality_profile "Comedy" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Comedy'
  AND custom_format_name = 'Bad Source'
  AND arr_type = 'all'
  AND score = -1000;
-- --- END op 350

-- --- BEGIN op 351 ( update quality_profile "Comedy" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Comedy'
  AND custom_format_name = 'Bad Source'
  AND arr_type = 'sonarr'
  AND score = -1000;
-- --- END op 351

-- --- BEGIN op 352 ( update quality_profile "Foreign" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Foreign', 'Bad Source', 'radarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Foreign'
    AND custom_format_name = 'Bad Source'
    AND arr_type = 'radarr'
);
-- --- END op 352

-- --- BEGIN op 353 ( update quality_profile "Foreign" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Foreign', 'Bad Source', 'sonarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Foreign'
    AND custom_format_name = 'Bad Source'
    AND arr_type = 'sonarr'
);
-- --- END op 353

-- --- BEGIN op 354 ( update quality_profile "Foreign" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Foreign'
  AND custom_format_name = 'Bad Source'
  AND arr_type = 'all'
  AND score = -1000;
-- --- END op 354

-- --- BEGIN op 355 ( update quality_profile "Foreign" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Foreign'
  AND custom_format_name = 'Bad Source'
  AND arr_type = 'sonarr'
  AND score = -1000;
-- --- END op 355

-- --- BEGIN op 356 ( update quality_profile "Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Main', 'Bad Source', 'radarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Main'
    AND custom_format_name = 'Bad Source'
    AND arr_type = 'radarr'
);
-- --- END op 356

-- --- BEGIN op 357 ( update quality_profile "Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Main', 'Bad Source', 'sonarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Main'
    AND custom_format_name = 'Bad Source'
    AND arr_type = 'sonarr'
);
-- --- END op 357

-- --- BEGIN op 358 ( update quality_profile "Main" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Main'
  AND custom_format_name = 'Bad Source'
  AND arr_type = 'all'
  AND score = -1000;
-- --- END op 358

-- --- BEGIN op 359 ( update quality_profile "Main" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Main'
  AND custom_format_name = 'Bad Source'
  AND arr_type = 'sonarr'
  AND score = -1000;
-- --- END op 359

-- --- BEGIN op 360 ( update quality_profile "Main" )
DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Main'
  AND quality_group_name = 'DVD'
  AND quality_name IS NULL
  AND position = 2
  AND enabled = 1
  AND upgrade_until = 0;

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Main'
  AND quality_group_name = 'DVD'
  AND quality_name = 'DVD';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Main'
  AND quality_group_name = 'DVD'
  AND quality_name = 'DVD-R';

DELETE FROM quality_groups
WHERE quality_profile_name = 'Main'
  AND name = 'DVD';

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Main', 'DVD', NULL, 2, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Main'
    AND quality_name = 'DVD'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Main', 'DVD-R', NULL, 5, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Main'
    AND quality_name = 'DVD-R'
    AND quality_group_name IS NULL
);

UPDATE quality_profile_qualities
SET position = 6
WHERE quality_profile_name = 'Main'
  AND quality_name = 'Bluray-2160p'
  AND quality_group_name IS NULL
  AND position = 5
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 7
WHERE quality_profile_name = 'Main'
  AND quality_name = 'BR-DISK'
  AND quality_group_name IS NULL
  AND position = 6
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 8
WHERE quality_profile_name = 'Main'
  AND quality_name = 'CAM'
  AND quality_group_name IS NULL
  AND position = 7
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 9
WHERE quality_profile_name = 'Main'
  AND quality_name = 'DVDSCR'
  AND quality_group_name IS NULL
  AND position = 8
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 10
WHERE quality_profile_name = 'Main'
  AND quality_name = 'HDTV-2160p'
  AND quality_group_name IS NULL
  AND position = 9
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 11
WHERE quality_profile_name = 'Main'
  AND quality_name = 'HDTV-480p'
  AND quality_group_name IS NULL
  AND position = 10
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 12
WHERE quality_profile_name = 'Main'
  AND quality_name = 'Raw-HD'
  AND quality_group_name IS NULL
  AND position = 11
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 13
WHERE quality_profile_name = 'Main'
  AND quality_name = 'REGIONAL'
  AND quality_group_name IS NULL
  AND position = 12
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 14
WHERE quality_profile_name = 'Main'
  AND quality_name = 'Remux-2160p'
  AND quality_group_name IS NULL
  AND position = 13
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 15
WHERE quality_profile_name = 'Main'
  AND quality_name = 'TELECINE'
  AND quality_group_name IS NULL
  AND position = 14
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 16
WHERE quality_profile_name = 'Main'
  AND quality_name = 'TELESYNC'
  AND quality_group_name IS NULL
  AND position = 15
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 17
WHERE quality_profile_name = 'Main'
  AND quality_name = 'Unknown'
  AND quality_group_name IS NULL
  AND position = 16
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 18
WHERE quality_profile_name = 'Main'
  AND quality_name = 'WEBDL-2160p'
  AND quality_group_name IS NULL
  AND position = 17
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 19
WHERE quality_profile_name = 'Main'
  AND quality_name = 'WEBRip-2160p'
  AND quality_group_name IS NULL
  AND position = 18
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 20
WHERE quality_profile_name = 'Main'
  AND quality_name = 'WORKPRINT'
  AND quality_group_name IS NULL
  AND position = 19
  AND enabled = 0
  AND upgrade_until = 0;
-- --- END op 360

-- --- BEGIN op 361 ( update quality_profile "Comedy" )
DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Comedy'
  AND quality_group_name = 'DVD'
  AND quality_name IS NULL
  AND position = 2
  AND enabled = 1
  AND upgrade_until = 0;

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Comedy'
  AND quality_group_name = 'DVD'
  AND quality_name = 'DVD';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Comedy'
  AND quality_group_name = 'DVD'
  AND quality_name = 'DVD-R';

DELETE FROM quality_groups
WHERE quality_profile_name = 'Comedy'
  AND name = 'DVD';

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Comedy', 'DVD', NULL, 2, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Comedy'
    AND quality_name = 'DVD'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Comedy', 'DVD-R', NULL, 5, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Comedy'
    AND quality_name = 'DVD-R'
    AND quality_group_name IS NULL
);

UPDATE quality_profile_qualities
SET position = 6
WHERE quality_profile_name = 'Comedy'
  AND quality_name = 'Bluray-2160p'
  AND quality_group_name IS NULL
  AND position = 5
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 7
WHERE quality_profile_name = 'Comedy'
  AND quality_name = 'BR-DISK'
  AND quality_group_name IS NULL
  AND position = 6
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 8
WHERE quality_profile_name = 'Comedy'
  AND quality_name = 'CAM'
  AND quality_group_name IS NULL
  AND position = 7
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 9
WHERE quality_profile_name = 'Comedy'
  AND quality_name = 'DVDSCR'
  AND quality_group_name IS NULL
  AND position = 8
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 10
WHERE quality_profile_name = 'Comedy'
  AND quality_name = 'HDTV-2160p'
  AND quality_group_name IS NULL
  AND position = 9
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 11
WHERE quality_profile_name = 'Comedy'
  AND quality_name = 'HDTV-480p'
  AND quality_group_name IS NULL
  AND position = 10
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 12
WHERE quality_profile_name = 'Comedy'
  AND quality_name = 'Raw-HD'
  AND quality_group_name IS NULL
  AND position = 11
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 13
WHERE quality_profile_name = 'Comedy'
  AND quality_name = 'REGIONAL'
  AND quality_group_name IS NULL
  AND position = 12
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 14
WHERE quality_profile_name = 'Comedy'
  AND quality_name = 'Remux-2160p'
  AND quality_group_name IS NULL
  AND position = 13
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 15
WHERE quality_profile_name = 'Comedy'
  AND quality_name = 'TELECINE'
  AND quality_group_name IS NULL
  AND position = 14
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 16
WHERE quality_profile_name = 'Comedy'
  AND quality_name = 'TELESYNC'
  AND quality_group_name IS NULL
  AND position = 15
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 17
WHERE quality_profile_name = 'Comedy'
  AND quality_name = 'Unknown'
  AND quality_group_name IS NULL
  AND position = 16
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 18
WHERE quality_profile_name = 'Comedy'
  AND quality_name = 'WEBDL-2160p'
  AND quality_group_name IS NULL
  AND position = 17
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 19
WHERE quality_profile_name = 'Comedy'
  AND quality_name = 'WEBRip-2160p'
  AND quality_group_name IS NULL
  AND position = 18
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 20
WHERE quality_profile_name = 'Comedy'
  AND quality_name = 'WORKPRINT'
  AND quality_group_name IS NULL
  AND position = 19
  AND enabled = 0
  AND upgrade_until = 0;
-- --- END op 361

-- --- BEGIN op 362 ( update quality_profile "Anime" )
DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Anime'
  AND quality_group_name = 'DVD'
  AND quality_name IS NULL
  AND position = 2
  AND enabled = 1
  AND upgrade_until = 0;

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Anime'
  AND quality_group_name = 'DVD'
  AND quality_name = 'DVD';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Anime'
  AND quality_group_name = 'DVD'
  AND quality_name = 'DVD-R';

DELETE FROM quality_groups
WHERE quality_profile_name = 'Anime'
  AND name = 'DVD';

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Anime', 'DVD', NULL, 2, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Anime'
    AND quality_name = 'DVD'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Anime', 'DVD-R', NULL, 5, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Anime'
    AND quality_name = 'DVD-R'
    AND quality_group_name IS NULL
);

UPDATE quality_profile_qualities
SET position = 6
WHERE quality_profile_name = 'Anime'
  AND quality_name = 'Bluray-2160p'
  AND quality_group_name IS NULL
  AND position = 5
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 7
WHERE quality_profile_name = 'Anime'
  AND quality_name = 'BR-DISK'
  AND quality_group_name IS NULL
  AND position = 6
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 8
WHERE quality_profile_name = 'Anime'
  AND quality_name = 'CAM'
  AND quality_group_name IS NULL
  AND position = 7
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 9
WHERE quality_profile_name = 'Anime'
  AND quality_name = 'DVDSCR'
  AND quality_group_name IS NULL
  AND position = 8
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 10
WHERE quality_profile_name = 'Anime'
  AND quality_name = 'HDTV-2160p'
  AND quality_group_name IS NULL
  AND position = 9
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 11
WHERE quality_profile_name = 'Anime'
  AND quality_name = 'HDTV-480p'
  AND quality_group_name IS NULL
  AND position = 10
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 12
WHERE quality_profile_name = 'Anime'
  AND quality_name = 'Raw-HD'
  AND quality_group_name IS NULL
  AND position = 11
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 13
WHERE quality_profile_name = 'Anime'
  AND quality_name = 'REGIONAL'
  AND quality_group_name IS NULL
  AND position = 12
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 14
WHERE quality_profile_name = 'Anime'
  AND quality_name = 'Remux-2160p'
  AND quality_group_name IS NULL
  AND position = 13
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 15
WHERE quality_profile_name = 'Anime'
  AND quality_name = 'TELECINE'
  AND quality_group_name IS NULL
  AND position = 14
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 16
WHERE quality_profile_name = 'Anime'
  AND quality_name = 'TELESYNC'
  AND quality_group_name IS NULL
  AND position = 15
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 17
WHERE quality_profile_name = 'Anime'
  AND quality_name = 'Unknown'
  AND quality_group_name IS NULL
  AND position = 16
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 18
WHERE quality_profile_name = 'Anime'
  AND quality_name = 'WEBDL-2160p'
  AND quality_group_name IS NULL
  AND position = 17
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 19
WHERE quality_profile_name = 'Anime'
  AND quality_name = 'WEBRip-2160p'
  AND quality_group_name IS NULL
  AND position = 18
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 20
WHERE quality_profile_name = 'Anime'
  AND quality_name = 'WORKPRINT'
  AND quality_group_name IS NULL
  AND position = 19
  AND enabled = 0
  AND upgrade_until = 0;
-- --- END op 362

-- --- BEGIN op 363 ( update quality_profile "Foreign" )
DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Foreign'
  AND quality_group_name = 'DVD'
  AND quality_name IS NULL
  AND position = 2
  AND enabled = 1
  AND upgrade_until = 0;

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Foreign'
  AND quality_group_name = 'DVD'
  AND quality_name = 'DVD';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Foreign'
  AND quality_group_name = 'DVD'
  AND quality_name = 'DVD-R';

DELETE FROM quality_groups
WHERE quality_profile_name = 'Foreign'
  AND name = 'DVD';

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Foreign', 'DVD', NULL, 2, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Foreign'
    AND quality_name = 'DVD'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Foreign', 'DVD-R', NULL, 5, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Foreign'
    AND quality_name = 'DVD-R'
    AND quality_group_name IS NULL
);

UPDATE quality_profile_qualities
SET position = 6
WHERE quality_profile_name = 'Foreign'
  AND quality_name = 'Bluray-2160p'
  AND quality_group_name IS NULL
  AND position = 5
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 7
WHERE quality_profile_name = 'Foreign'
  AND quality_name = 'BR-DISK'
  AND quality_group_name IS NULL
  AND position = 6
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 8
WHERE quality_profile_name = 'Foreign'
  AND quality_name = 'CAM'
  AND quality_group_name IS NULL
  AND position = 7
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 9
WHERE quality_profile_name = 'Foreign'
  AND quality_name = 'DVDSCR'
  AND quality_group_name IS NULL
  AND position = 8
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 10
WHERE quality_profile_name = 'Foreign'
  AND quality_name = 'HDTV-2160p'
  AND quality_group_name IS NULL
  AND position = 9
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 11
WHERE quality_profile_name = 'Foreign'
  AND quality_name = 'HDTV-480p'
  AND quality_group_name IS NULL
  AND position = 10
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 12
WHERE quality_profile_name = 'Foreign'
  AND quality_name = 'Raw-HD'
  AND quality_group_name IS NULL
  AND position = 11
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 13
WHERE quality_profile_name = 'Foreign'
  AND quality_name = 'REGIONAL'
  AND quality_group_name IS NULL
  AND position = 12
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 14
WHERE quality_profile_name = 'Foreign'
  AND quality_name = 'Remux-2160p'
  AND quality_group_name IS NULL
  AND position = 13
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 15
WHERE quality_profile_name = 'Foreign'
  AND quality_name = 'TELECINE'
  AND quality_group_name IS NULL
  AND position = 14
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 16
WHERE quality_profile_name = 'Foreign'
  AND quality_name = 'TELESYNC'
  AND quality_group_name IS NULL
  AND position = 15
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 17
WHERE quality_profile_name = 'Foreign'
  AND quality_name = 'Unknown'
  AND quality_group_name IS NULL
  AND position = 16
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 18
WHERE quality_profile_name = 'Foreign'
  AND quality_name = 'WEBDL-2160p'
  AND quality_group_name IS NULL
  AND position = 17
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 19
WHERE quality_profile_name = 'Foreign'
  AND quality_name = 'WEBRip-2160p'
  AND quality_group_name IS NULL
  AND position = 18
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 20
WHERE quality_profile_name = 'Foreign'
  AND quality_name = 'WORKPRINT'
  AND quality_group_name IS NULL
  AND position = 19
  AND enabled = 0
  AND upgrade_until = 0;
-- --- END op 363
