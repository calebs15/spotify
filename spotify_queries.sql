SELECT
  s.bpm, 
  SUM(CAST(s.streams as INT))
FROM
  `calebserrette.spotify.spotify_table` as s
GROUP BY
  s.bpm
