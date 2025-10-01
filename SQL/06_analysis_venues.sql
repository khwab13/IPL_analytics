-- Consolidated Venues
SELECT 
  CASE 
    WHEN venue LIKE '%Wankhede%' THEN 'Wankhede Stadium'
    WHEN venue LIKE '%M Chinnaswamy%' THEN 'M Chinnaswamy Stadium'
    WHEN venue LIKE '%Eden Gardens%' THEN 'Eden Gardens'
    WHEN venue LIKE '%Feroz Shah Kotla%' OR venue LIKE '%Arun Jaitley%' THEN 'Feroz Shah Kotla'
    WHEN venue LIKE '%MA Chidambaram%' THEN 'MA Chidambaram Stadium'
    WHEN venue LIKE '%Sawai Mansingh%' THEN 'Sawai Mansingh Stadium'
    WHEN venue LIKE '%Rajiv Gandhi International%' THEN 'Rajiv Gandhi International Stadium'
    WHEN venue LIKE '%Dubai International%' THEN 'Dubai International Cricket Stadium'
    WHEN venue LIKE '%DY Patil%' THEN 'DY Patil Sports Academy'
    ELSE venue
  END AS clean_venue,
  COUNT(*) AS matches_played
FROM matches
GROUP BY clean_venue
ORDER BY matches_played DESC;
