SELECT 
  bpm, 
  ROUND(AVG(SAFE_CAST(streams AS INT)), 2) as avg_streams
FROM 
  `spotify.spotify_table`
GROUP BY 
  bpm
ORDER BY 
  avg_streams DESC
;
