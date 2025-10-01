-- Most Runs by Batter
SELECT batter, SUM(batsman_runs) AS total_runs
FROM deliveries
GROUP BY batter
ORDER BY total_runs DESC
LIMIT 10;

--Distinct dismissal_king
SELECT DISTINCT dismissal_kind
FROM deliveries
WHERE dismissal_kind IS NOT NULL;

--Most wickets by bowlers
SELECT bowler, COUNT(*) AS wickets
FROM deliveries
WHERE dismissal_kind IN ('caught', 'bowled', 'lbw', 'stumped', 'caught and bowled', 'hit wicket')
GROUP BY bowler
ORDER BY wickets DESC
LIMIT 10;

-- Top players by player_of_match
SELECT player_of_match, COUNT(*) AS awards
FROM matches
GROUP BY player_of_match
ORDER BY awards DESC
LIMIT 10;
