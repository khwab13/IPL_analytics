-- Create raw staging tables
CREATE TABLE raw_matches (
    id VARCHAR(20),
    season VARCHAR(20),
    city VARCHAR(100),
    date VARCHAR(50),
    match_type VARCHAR(50),
    player_of_match VARCHAR(100),
    venue VARCHAR(200),
    team1 VARCHAR(100),
    team2 VARCHAR(100),
    toss_winner VARCHAR(100),
    toss_decision VARCHAR(20),
    winner VARCHAR(100),
    result VARCHAR(50),
    result_margin VARCHAR(20),
    target_runs VARCHAR(20),
    target_overs VARCHAR(20),
    super_over VARCHAR(10),
    method VARCHAR(50),
    umpire1 VARCHAR(100),
    umpire2 VARCHAR(100)
);

CREATE TABLE raw_deliveries (
    match_id VARCHAR(20),
    inning INT,
    batting_team VARCHAR(100),
    bowling_team VARCHAR(100),
    `over` INT,
    ball INT,
    batter VARCHAR(100),
    bowler VARCHAR(100),
    non_striker VARCHAR(100),
    batsman_runs INT,
    extra_runs INT,
    total_runs INT,
    extras_type VARCHAR(50),
    is_wicket INT,
    player_dismissed VARCHAR(100),
    dismissal_kind VARCHAR(50),
    fielder VARCHAR(100)
);

-- Final cleaned matches table
CREATE TABLE matches (
  id INT PRIMARY KEY,
  season INT,
  city VARCHAR(100),
  date DATE,
  match_type VARCHAR(50),
  player_of_match VARCHAR(150),
  venue VARCHAR(150),
  team1 VARCHAR(100),
  team2 VARCHAR(100),
  toss_winner VARCHAR(100),
  toss_decision VARCHAR(20),
  winner VARCHAR(100),
  result VARCHAR(50),
  result_margin VARCHAR(50),
  target_runs INT,
  target_overs DECIMAL(5,2),
  super_over TINYINT(1),
  method VARCHAR(50),
  umpire1 VARCHAR(100),
  umpire2 VARCHAR(100)
);

-- useful indexes
CREATE INDEX idx_matches_season ON matches(season);
CREATE INDEX idx_matches_winner ON matches(winner);
CREATE INDEX idx_matches_venue ON matches(venue);

-- Final cleaned deliveries table
CREATE TABLE deliveries (
  delivery_id BIGINT AUTO_INCREMENT PRIMARY KEY,
  match_id INT NOT NULL,
  inning TINYINT UNSIGNED,
  over_num TINYINT UNSIGNED,
  ball_num TINYINT UNSIGNED,
  batting_team VARCHAR(100),
  bowling_team VARCHAR(100),
  batter VARCHAR(150),
  bowler VARCHAR(150),
  non_striker VARCHAR(150),
  batsman_runs TINYINT,
  extra_runs TINYINT,
  total_runs TINYINT,
  extras_type VARCHAR(50),
  is_wicket TINYINT(1),
  player_dismissed VARCHAR(150),
  dismissal_kind VARCHAR(100),
  fielder VARCHAR(150),
  FOREIGN KEY (match_id) REFERENCES matches(id) ON DELETE CASCADE
);

-- ensure no duplicate ball entries
ALTER TABLE deliveries ADD UNIQUE KEY uk_delivery (match_id, inning, over_num, ball_num);

-- indexes for fast analysis
CREATE INDEX idx_deliveries_match ON deliveries(match_id);
CREATE INDEX idx_deliveries_batter ON deliveries(batter);
CREATE INDEX idx_deliveries_bowler ON deliveries(bowler);
CREATE INDEX idx_deliveries_batting_team ON deliveries(batting_team);
CREATE INDEX idx_deliveries_bowling_team ON deliveries(bowling_team);

