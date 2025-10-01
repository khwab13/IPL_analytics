--Matches
INSERT INTO matches
(id, season, city, date, match_type, player_of_match, venue, team1, team2, toss_winner, toss_decision, winner, result, result_margin, target_runs, target_overs, super_over, method, umpire1, umpire2)
SELECT
  CAST(id AS UNSIGNED),
  YEAR(STR_TO_DATE(date, '%Y-%m-%d')) AS season,   -- extract year from date
  NULLIF(city,''),
  STR_TO_DATE(date, '%Y-%m-%d'),
  match_type,
  player_of_match,
  venue,
  team1, team2, toss_winner, toss_decision, winner, result, result_margin,
  NULLIF(target_runs,'')*1,
  NULLIF(target_overs,'')*1.0,
  CASE WHEN super_over IN ('1','Yes','YES','True','TRUE') THEN 1 ELSE 0 END,
  method,
  umpire1, umpire2
FROM raw_matches;

-- Deliveries
INSERT INTO deliveries (match_id, inning, over_num, ball_num, batting_team, bowling_team, batter, bowler, non_striker, batsman_runs, extra_runs, total_runs, extras_type, is_wicket, player_dismissed, dismissal_kind, fielder)
SELECT
  CAST(match_id AS UNSIGNED),
  CAST(inning AS UNSIGNED),
  CAST(`over` AS UNSIGNED),
  CAST(ball AS UNSIGNED),
  batting_team, bowling_team, batter, bowler, non_striker,
  CAST(batsman_runs AS UNSIGNED),
  CAST(extra_runs AS UNSIGNED),
  CAST(total_runs AS UNSIGNED),
  NULLIF(extras_type,''),
  CASE WHEN is_wicket IN ('1','true','TRUE','yes','Yes') THEN 1 ELSE 0 END,
  NULLIF(player_dismissed,''),
  NULLIF(dismissal_kind,''),
  NULLIF(fielder,'')
FROM raw_deliveries;


--Check duplicate balls (should be zero):
SELECT match_id, inning, over_num, ball_num, COUNT(*) cnt
FROM deliveries
GROUP BY match_id, inning, over_num, ball_num
HAVING cnt > 1;

