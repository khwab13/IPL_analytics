---- Wins and Final Wins by Team per Season
SELECT 
  season,
  CASE 
    WHEN winner IN ('Punjab Kings', 'Kings XI Punjab') THEN 'Kings XI Punjab'
    WHEN winner IN ('Rising Pune Supergiant', 'Rising Pune Supergiants') THEN 'Rising Pune Supergiants'
    WHEN winner IN ('Delhi Daredevils', 'Delhi Capitals') THEN 'Delhi Capitals'
    WHEN winner IN ('Royal Challengers Bangalore', 'Royal Challengers Bengaluru') THEN 'Royal Challengers Bengaluru'
    ELSE winner
  END AS team,
  COUNT(*) AS wins,
  MAX(
      CASE 
        WHEN match_type = 'Final' THEN 1
        ELSE 0
      END
  ) AS final_winner
FROM matches
WHERE winner IS NOT NULL
  AND winner <> 'NA'
GROUP BY season, team
ORDER BY season, wins DESC;

--wins if wins the toss
SELECT toss_decision, COUNT(*) AS matches, 
       SUM(CASE WHEN toss_winner = winner THEN 1 ELSE 0 END) AS wins_after_toss
FROM matches
GROUP BY toss_decision;
