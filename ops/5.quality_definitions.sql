-- @operation: export
-- @entity: batch
-- @name: Quality Definitions
-- @exportedAt: 2026-08-18T22:19:00.811Z
-- @opIds: 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280

-- --- BEGIN op 256 ( create radarr_quality_definitions "Radarr Quality Definitions" )
insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr Quality Definitions', 'Bluray-1080p', 0, 200, 30);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr Quality Definitions', 'Bluray-2160p', 0, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr Quality Definitions', 'Bluray-480p', 0, 50, 25);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr Quality Definitions', 'Bluray-576p', 0, 50, 25);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr Quality Definitions', 'Bluray-720p', 0, 100, 20);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr Quality Definitions', 'BR-DISK', 0, 50, 25);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr Quality Definitions', 'CAM', 0, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr Quality Definitions', 'DVD', 0, 50, 25);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr Quality Definitions', 'DVD-R', 0, 50, 25);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr Quality Definitions', 'DVDSCR', 0, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr Quality Definitions', 'HDTV-1080p', 0, 200, 30);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr Quality Definitions', 'HDTV-2160p', 0, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr Quality Definitions', 'HDTV-720p', 0, 100, 20);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr Quality Definitions', 'Raw-HD', 0, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr Quality Definitions', 'REGIONAL', 0, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr Quality Definitions', 'Remux-1080p', 0, 300, 40);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr Quality Definitions', 'Remux-2160p', 0, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr Quality Definitions', 'SDTV', 0, 50, 25);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr Quality Definitions', 'TELECINE', 0, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr Quality Definitions', 'TELESYNC', 0, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr Quality Definitions', 'Unknown', 0, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr Quality Definitions', 'WEBDL-1080p', 0, 200, 30);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr Quality Definitions', 'WEBDL-2160p', 0, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr Quality Definitions', 'WEBDL-480p', 0, 50, 25);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr Quality Definitions', 'WEBDL-720p', 0, 100, 20);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr Quality Definitions', 'WEBRip-1080p', 0, 200, 30);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr Quality Definitions', 'WEBRip-2160p', 0, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr Quality Definitions', 'WEBRip-480p', 0, 50, 25);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr Quality Definitions', 'WEBRip-720p', 0, 100, 20);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr Quality Definitions', 'WORKPRINT', 0, 0, 0);
-- --- END op 256

-- --- BEGIN op 257 ( create sonarr_quality_definitions "Sonarr Quality Definitions" )
insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr Quality Definitions', 'Bluray-1080p', 0, 200, 30);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr Quality Definitions', 'Bluray-2160p', 0, 0, 0);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr Quality Definitions', 'Bluray-480p', 0, 50, 25);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr Quality Definitions', 'Bluray-576p', 0, 50, 25);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr Quality Definitions', 'Bluray-720p', 0, 100, 20);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr Quality Definitions', 'DVD', 0, 50, 25);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr Quality Definitions', 'HDTV-1080p', 0, 200, 30);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr Quality Definitions', 'HDTV-2160p', 0, 0, 0);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr Quality Definitions', 'HDTV-720p', 0, 100, 20);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr Quality Definitions', 'Raw-HD', 0, 15, 5);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr Quality Definitions', 'Remux-1080p', 0, 300, 40);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr Quality Definitions', 'Remux-2160p', 0, 0, 0);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr Quality Definitions', 'SDTV', 0, 50, 25);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr Quality Definitions', 'Unknown', 0, 15, 5);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr Quality Definitions', 'WEBDL-1080p', 0, 200, 30);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr Quality Definitions', 'WEBDL-2160p', 0, 0, 0);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr Quality Definitions', 'WEBDL-480p', 0, 50, 25);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr Quality Definitions', 'WEBDL-720p', 0, 100, 20);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr Quality Definitions', 'WEBRip-1080p', 0, 200, 30);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr Quality Definitions', 'WEBRip-2160p', 0, 0, 0);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr Quality Definitions', 'WEBRip-480p', 0, 50, 25);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr Quality Definitions', 'WEBRip-720p', 0, 100, 20);
-- --- END op 257

-- --- BEGIN op 258 ( update radarr_quality_definitions "Radarr Quality Definitions" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 8, "preferred_size" = 3 where "name" = 'Radarr Quality Definitions' and "quality_name" = 'CAM' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 0;
-- --- END op 258

-- --- BEGIN op 259 ( update radarr_quality_definitions "Radarr Quality Definitions" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 20, "preferred_size" = 10 where "name" = 'Radarr Quality Definitions' and "quality_name" = 'DVDSCR' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 0;
-- --- END op 259

-- --- BEGIN op 260 ( update radarr_quality_definitions "Radarr Quality Definitions" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 25, "preferred_size" = 10 where "name" = 'Radarr Quality Definitions' and "quality_name" = 'REGIONAL' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 0;
-- --- END op 260

-- --- BEGIN op 261 ( update radarr_quality_definitions "Radarr Quality Definitions" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 15, "preferred_size" = 5 where "name" = 'Radarr Quality Definitions' and "quality_name" = 'Raw-HD' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 0;
-- --- END op 261

-- --- BEGIN op 262 ( update radarr_quality_definitions "Radarr Quality Definitions" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 8, "preferred_size" = 3 where "name" = 'Radarr Quality Definitions' and "quality_name" = 'TELECINE' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 0;
-- --- END op 262

-- --- BEGIN op 263 ( update radarr_quality_definitions "Radarr Quality Definitions" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 8, "preferred_size" = 3 where "name" = 'Radarr Quality Definitions' and "quality_name" = 'TELESYNC' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 0;
-- --- END op 263

-- --- BEGIN op 264 ( update radarr_quality_definitions "Radarr Quality Definitions" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 15, "preferred_size" = 5 where "name" = 'Radarr Quality Definitions' and "quality_name" = 'Unknown' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 0;
-- --- END op 264

-- --- BEGIN op 265 ( update radarr_quality_definitions "Radarr Quality Definitions" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 8, "preferred_size" = 3 where "name" = 'Radarr Quality Definitions' and "quality_name" = 'WORKPRINT' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 0;
-- --- END op 265

-- --- BEGIN op 271 ( update radarr_quality_definitions "Radarr Quality Definitions" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 350, "preferred_size" = 120 where "name" = 'Radarr Quality Definitions' and "quality_name" = 'Bluray-2160p' and "min_size" = 0 and "max_size" = 180 and "preferred_size" = 80;
-- --- END op 271

-- --- BEGIN op 272 ( update radarr_quality_definitions "Radarr Quality Definitions" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 200, "preferred_size" = 60 where "name" = 'Radarr Quality Definitions' and "quality_name" = 'HDTV-2160p' and "min_size" = 0 and "max_size" = 180 and "preferred_size" = 80;
-- --- END op 272

-- --- BEGIN op 273 ( update radarr_quality_definitions "Radarr Quality Definitions" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 570, "preferred_size" = 200 where "name" = 'Radarr Quality Definitions' and "quality_name" = 'Remux-2160p' and "min_size" = 0 and "max_size" = 280 and "preferred_size" = 130;
-- --- END op 273

-- --- BEGIN op 274 ( update radarr_quality_definitions "Radarr Quality Definitions" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 250, "preferred_size" = 80 where "name" = 'Radarr Quality Definitions' and "quality_name" = 'WEBDL-2160p' and "min_size" = 0 and "max_size" = 120 and "preferred_size" = 55;
-- --- END op 274

-- --- BEGIN op 275 ( update radarr_quality_definitions "Radarr Quality Definitions" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 250, "preferred_size" = 80 where "name" = 'Radarr Quality Definitions' and "quality_name" = 'WEBRip-2160p' and "min_size" = 0 and "max_size" = 120 and "preferred_size" = 55;
-- --- END op 275

-- --- BEGIN op 276 ( update sonarr_quality_definitions "Sonarr Quality Definitions" )
update "sonarr_quality_definitions" set "min_size" = 0, "max_size" = 350, "preferred_size" = 120 where "name" = 'Sonarr Quality Definitions' and "quality_name" = 'Bluray-2160p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 0;
-- --- END op 276

-- --- BEGIN op 277 ( update sonarr_quality_definitions "Sonarr Quality Definitions" )
update "sonarr_quality_definitions" set "min_size" = 0, "max_size" = 200, "preferred_size" = 60 where "name" = 'Sonarr Quality Definitions' and "quality_name" = 'HDTV-2160p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 0;
-- --- END op 277

-- --- BEGIN op 278 ( update sonarr_quality_definitions "Sonarr Quality Definitions" )
update "sonarr_quality_definitions" set "min_size" = 0, "max_size" = 570, "preferred_size" = 200 where "name" = 'Sonarr Quality Definitions' and "quality_name" = 'Remux-2160p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 0;
-- --- END op 278

-- --- BEGIN op 279 ( update sonarr_quality_definitions "Sonarr Quality Definitions" )
update "sonarr_quality_definitions" set "min_size" = 0, "max_size" = 250, "preferred_size" = 80 where "name" = 'Sonarr Quality Definitions' and "quality_name" = 'WEBDL-2160p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 0;
-- --- END op 279

-- --- BEGIN op 280 ( update sonarr_quality_definitions "Sonarr Quality Definitions" )
update "sonarr_quality_definitions" set "min_size" = 0, "max_size" = 250, "preferred_size" = 80 where "name" = 'Sonarr Quality Definitions' and "quality_name" = 'WEBRip-2160p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 0;
-- --- END op 280
