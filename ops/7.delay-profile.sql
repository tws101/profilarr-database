-- =============================================================================
-- Delay Profiles
-- =============================================================================

INSERT INTO delay_profiles (
  name, preferred_protocol, usenet_delay, torrent_delay,
  bypass_if_highest_quality, bypass_if_above_custom_format_score,
  minimum_custom_format_score
) VALUES (
  'No Delay', 'prefer_usenet', 0, 0, 0, 0, NULL
);
