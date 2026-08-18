-- @operation: export
-- @entity: batch
-- @name: Quality Definitions
-- @exportedAt: 2026-08-18T22:19:26.445Z
-- @opIds: 266, 267, 268, 269, 270

-- --- BEGIN op 266 ( update radarr_quality_definitions "Radarr Quality Definitions" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 180, "preferred_size" = 80 where "name" = 'Radarr Quality Definitions' and "quality_name" = 'Bluray-2160p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 0;
-- --- END op 266

-- --- BEGIN op 267 ( update radarr_quality_definitions "Radarr Quality Definitions" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 180, "preferred_size" = 80 where "name" = 'Radarr Quality Definitions' and "quality_name" = 'HDTV-2160p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 0;
-- --- END op 267

-- --- BEGIN op 268 ( update radarr_quality_definitions "Radarr Quality Definitions" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 280, "preferred_size" = 130 where "name" = 'Radarr Quality Definitions' and "quality_name" = 'Remux-2160p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 0;
-- --- END op 268

-- --- BEGIN op 269 ( update radarr_quality_definitions "Radarr Quality Definitions" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 120, "preferred_size" = 55 where "name" = 'Radarr Quality Definitions' and "quality_name" = 'WEBDL-2160p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 0;
-- --- END op 269

-- --- BEGIN op 270 ( update radarr_quality_definitions "Radarr Quality Definitions" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 120, "preferred_size" = 55 where "name" = 'Radarr Quality Definitions' and "quality_name" = 'WEBRip-2160p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 0;
-- --- END op 270
