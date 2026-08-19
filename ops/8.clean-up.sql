-- @operation: export
-- @entity: batch
-- @name: clean up
-- @exportedAt: 2026-08-19T15:39:28.434Z
-- @opIds: 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380

-- --- BEGIN op 365 ( update regular_expression "5.1 Channel" )
update "regular_expressions" set "pattern" = '\b(5\.1|5 1|5CH|5\.1ch|5 ch|five point one)\b' where "name" = '5.1 Channel' and "pattern" = '\b(5\.1|5 1|5CH|5\.1ch|six point one|6\.0|6ch)\b';
-- --- END op 365

-- --- BEGIN op 366 ( update regular_expression "6 Channel" )
update "regular_expressions" set "pattern" = '\b(6\.0|6CH|6ch|6 channel|6 ch)\b' where "name" = '6 Channel' and "pattern" = '\b(6CH|6 channel|6\.0|6ch)\b';
-- --- END op 366

-- --- BEGIN op 367 ( update regular_expression "7.1 Channel" )
update "regular_expressions" set "pattern" = '\b(7\.1|7 1|7CH|7\.1ch|7 ch|seven point one)\b' where "name" = '7.1 Channel' and "pattern" = '\b(7\.1|7 1|7CH|seven point one|7\.1ch)\b';
-- --- END op 367

-- --- BEGIN op 368 ( update regular_expression "8 Channel" )
update "regular_expressions" set "pattern" = '\b(8\.0|8CH|8ch|8 channel|8 ch)\b' where "name" = '8 Channel' and "pattern" = '\b(8CH|8 channel|8\.0|8ch)\b';
-- --- END op 368

-- --- BEGIN op 369 ( update custom_format "HDR" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'HDR'
	  AND name = 'HDR10'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 369

-- --- BEGIN op 370 ( update custom_format "HDR" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'HDR'
	  AND name = 'HDR10+'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 370

-- --- BEGIN op 371 ( update custom_format "HDR" )
DELETE FROM condition_patterns WHERE custom_format_name = 'HDR' AND condition_name = 'HDR' AND regular_expression_name = 'HDR';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HDR', 'HDR', 'Any HDR');
-- --- END op 371

-- --- BEGIN op 372 ( delete regular_expression "HDR" )
delete from "regular_expressions" where "name" = 'HDR';
-- --- END op 372

-- --- BEGIN op 373 ( delete regular_expression "HDR10" )
delete from "regular_expressions" where "name" = 'HDR10';
-- --- END op 373

-- --- BEGIN op 374 ( delete regular_expression "HDR10+" )
delete from "regular_expressions" where "name" = 'HDR10+';
-- --- END op 374

-- --- BEGIN op 375 ( update regular_expression "HDR" )
update "regular_expressions" set "name" = 'HDR' where "name" = 'Any HDR';
-- --- END op 375

-- --- BEGIN op 376 ( update custom_format "DV Only (No HDR)" )
update "condition_patterns" set "regular_expression_name" = 'HDR' where "custom_format_name" = 'DV Only (No HDR)' and "condition_name" = 'No HDR' and "regular_expression_name" in ('Any HDR', 'HDR');
-- --- END op 376

-- --- BEGIN op 377 ( update custom_format "HDR" )
update "condition_patterns" set "regular_expression_name" = 'HDR' where "custom_format_name" = 'HDR' and "condition_name" = 'HDR' and "regular_expression_name" in ('Any HDR', 'HDR');
-- --- END op 377

-- --- BEGIN op 378 ( update regular_expression "Mono" )
update "regular_expressions" set "pattern" = '[^0-9]1[ .]0|\bMono\b|\b1\.0\b' where "name" = 'Mono' and "pattern" = '[^0-9]1[ .]0|\bMono\b|\[PCM \]';
-- --- END op 378

-- --- BEGIN op 379 ( update regular_expression "HEVC" )
update "regular_expressions" set "pattern" = '\b(HEVC|h265|x265)\b' where "name" = 'HEVC' and "pattern" = '\b(h265)\b|\b(x265)\b';
-- --- END op 379

-- --- BEGIN op 380 ( update regular_expression "3D" )
update "regular_expressions" set "pattern" = '\b(3d|sbs|half[ ._-]ou|half[ ._-]sbs)\b' where "name" = '3D' and "pattern" = '\b3d|sbs|half[ .-]ou|half[ .-]sbs\b';
-- --- END op 380
