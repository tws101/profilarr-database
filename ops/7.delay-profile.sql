-- @operation: export
-- @entity: batch
-- @name: Delay Profile
-- @exportedAt: 2026-08-18T23:23:38.621Z
-- @opIds: 290

-- --- BEGIN op 290 ( create delay_profile "No Delay" )
insert into "delay_profiles" ("name", "preferred_protocol", "usenet_delay", "torrent_delay", "bypass_if_highest_quality", "bypass_if_above_custom_format_score", "minimum_custom_format_score") values ('No Delay', 'prefer_usenet', 0, 0, 0, 0, NULL);
-- --- END op 290
