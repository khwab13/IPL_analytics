-- Load Matches Data
LOAD DATA LOCAL INFILE 'file_path/matches.csv'
INTO TABLE raw_matches
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(id, season, city, date, match_type, player_of_match, venue, team1, team2,
 toss_winner, toss_decision, winner, result, result_margin, target_runs,
 target_overs, super_over, method, umpire1, umpire2);

-- Load Deliveries Data
LOAD DATA LOCAL INFILE 'file_path/deliveries.csv'
INTO TABLE raw_deliveries
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(match_id, inning, batting_team, bowling_team, `over`, ball, batter, bowler,
 non_striker, batsman_runs, extra_runs, total_runs, extras_type, is_wicket,
 player_dismissed, dismissal_kind, fielder);
