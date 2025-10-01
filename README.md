🏏 IPL Analytics with MySQL & Power BI
📌 Project Overview

This project analyzes Indian Premier League (IPL) data using MySQL for data cleaning & transformations and Power BI for interactive visualizations.
It covers match outcomes, player performance, team insights, and venue statistics to build a complete end-to-end data analytics pipeline.

📂 Project Structure
ipl-analytics-powerbi-mysql/
│── data/                     # Raw data files (matches.csv, deliveries.csv)
│── sql/                      # SQL scripts for cleaning & analysis
│── powerbi/                  # Power BI dashboard & DAX measures
│── images/                   # Dashboard screenshots
│── README.md                 # Project documentation

⚙️ Tech Stack

Database: MySQL 8.0

Visualization: Power BI

Languages: SQL, DAX

Data Sources: IPL matches & ball-by-ball deliveries datasets

📊 Key Analyses
✅ Data Cleaning & Standardization (SQL)

Standardized team names (e.g., Kings XI Punjab vs Punjab Kings).

Consolidated venues (e.g., Feroz Shah Kotla → Arun Jaitley Stadium).

Converted super over, dates, targets into consistent formats.

✅ Team & Match Insights

Wins by team per season.

Final wins & champions across seasons.

Toss decisions & their impact on match outcomes.

✅ Player Insights

Top 10 players with most Player of the Match awards.

Season-wise Orange Cap (most runs scorer).

Season-wise Purple Cap (most wickets taker).

✅ Venue Insights

Venues with most matches played.

Teams with best win ratios at specific venues.

📈 Power BI Dashboard

The Power BI dashboard includes:

Team Performance Over Seasons 📉

Player Awards & Achievements 🏅

Top Venues & Match Distribution 🏟️

Filters/Slicers: Season, Team, Venue

📌 Example Screenshot:


🚀 How to Run
1️⃣ Setup MySQL

Import data using scripts in /sql/02_load_data.sql

Clean and transform using /sql/03_cleaning.sql

2️⃣ Power BI

Connect Power BI to MySQL

Import cleaned tables (matches, deliveries)

Add DAX measures from powerbi/dax_measures.txt

Build visuals as per requirements

📂 SQL Files

01_create_tables.sql → Create staging & final tables

02_load_data.sql → Load raw CSVs into MySQL

03_cleaning.sql → Standardize & clean data

04_analysis_team_wins.sql → Team wins per season

05_analysis_players.sql → Player performance queries

06_analysis_venues.sql → Venue-based insights

📂 Power BI Files

IPL_Dashboard.pbix → Main dashboard file

dax_measures.txt → Custom DAX calculations

📌 Learnings

Hands-on experience with data cleaning in SQL

Writing advanced queries for sports analytics

Creating interactive dashboards with Power BI

Data storytelling with real-world datasets
