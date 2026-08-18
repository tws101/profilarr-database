-- @operation: export
-- @entity: batch
-- @name: Media Settings
-- @exportedAt: 2026-08-18T21:47:19.832Z
-- @opIds: 252, 253

-- --- BEGIN op 252 ( create radarr_media_settings "Radarr Media Settings" )
insert into "radarr_media_settings" ("name", "propers_repacks", "enable_media_info") values ('Radarr Media Settings', 'doNotPrefer', 1);
-- --- END op 252

-- --- BEGIN op 253 ( create sonarr_media_settings "Sonarr Media Settings" )
insert into "sonarr_media_settings" ("name", "propers_repacks", "enable_media_info") values ('Sonarr Media Settings', 'doNotPrefer', 1);
-- --- END op 253
