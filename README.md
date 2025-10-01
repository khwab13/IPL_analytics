🏏 IPL Analytics Dashboard

<font size="4">An end-to-end Data Analytics Project analyzing IPL matches and deliveries using MySQL and Power BI.</font>

🚀 Project Overview

This project demonstrates how raw IPL datasets can be transformed into actionable insights.

Key Highlights:

✅ Data cleaning & transformation using MySQL

✅ Aggregated tables for matches and deliveries

✅ SQL queries for team, player, and venue insights

✅ Interactive Power BI dashboard with slicers, charts, and tables

✅ Star-schema data modeling for efficient relationships

🗂️ Dataset

Matches Data: Match-level details including season, teams, venue, result, and player of the match.

Deliveries Data: Ball-by-ball details including batter, bowler, runs, wickets, dismissal kind, and extras.

🛠️ Tech Stack

Database: MySQL

Visualization: Power BI

Languages: SQL, DAX

Version Control: Git & GitHub

⚙️ Data Cleaning & Transformation

Standardized inconsistent team names (e.g., Delhi Capitals / Delhi Daredevils → Delhi Daredevils)

Removed nulls and NA values

Consolidated team, season, and venue tables for consistency

Calculated final winners for each season

Pre-aggregated top players (batsmen & bowlers) and team performance tables for Power BI

📊 Analysis & Insights
Team Performance

Computed total wins per team per season

Analyzed toss decision impact on match outcomes

Determined season champions

Player Performance

Top Batsmen per season (Orange Cap winners)

Top Bowlers by wickets per season (Purple Cap winners)

Venue & Match Insights

Most frequently played venues

Highest margin wins

Head-to-head team comparisons

📈 Power BI Dashboard

Interactive Dashboard Features:

Multi-page visualization with KPI cards, bar charts, line charts, matrices, and tables

Slicers: Team, Season, Player, Venue

Dynamic Measures: Total runs, wickets, matches, final wins per team

Bridge table setup: Filters both team1 and team2 with a single team slicer

Conditional formatting and tooltips for enhanced insights

Dashboard Pages:

Overview / KPIs

Team Performance

Player Performance

Match & Venue Insights

Dynamic Trends (runs & wickets over seasons)

📌 The Power BI .pbix file is included in this repo for interactive exploration.

📂 Project Structure
ipl-analytics/
├── sql/                 # SQL scripts for data cleaning, table creation, and analysis
├── datasets/            # CSVs: matches.csv and deliveries.csv
├── pbix/                # Power BI dashboard file
└── README.md            # Project documentation

🎯 How to Run

Clone the repository:

git clone https://github.com/your-username/ipl-analytics.git


Import the SQL scripts into MySQL to create cleaned and aggregated tables.

Connect Power BI Desktop to MySQL via ODBC or MySQL connector.

Load the .pbix file to explore the pre-built dashboard.

🏅 Key Insights

Mumbai Indians and Chennai Super Kings dominate IPL history 🏆

Toss decision has limited overall impact on match outcomes

Venues like Eden Gardens & Wankhede Stadium host the most matches

Player performances vary significantly by season
