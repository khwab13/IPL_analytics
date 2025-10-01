# 🏏 IPL Analytics Dashboard  

<font size="4">An end-to-end **Data Analytics Project** on IPL matches and deliveries using **MySQL** and **Power BI**.</font>  

---

## 🎯 **Project Objective**  
The goal of this project was to perform a **comprehensive analysis of IPL (Indian Premier League) data** to uncover key insights into:  

- 🏆 **Team Performance** across seasons  
- 👨‍🏏 **Top Players** (batsmen & bowlers)  
- 🎲 **Impact of Toss** on match outcomes  
- 🏟️ **Most Popular Venues**  
- 🏁 **Final Winners** for each season  

This project demonstrates the **complete data pipeline**: from raw CSVs → SQL cleaning & transformation → advanced queries → interactive Power BI dashboard.  

---

## 🗂️ **Dataset**  
The dataset consists of two CSV files:  
1. **[Matches Data](https://github.com/khwab13/nnnnn/blob/main/Dataset/deliveries.csv.zip)** → Match-level details (season, teams, venue, results, umpires, etc.)  
2. **[Deliveries Data](https://github.com/khwab13/nnnnn/blob/main/Dataset/matches.csv)** → Ball-by-ball details (batsman, bowler, runs, extras, wickets, dismissal type, etc.)  

---

## 🛠️ **Tech Stack**  
- **Database**: MySQL  
- **Visualization**: Power BI  
- **Languages**: SQL, DAX  
- **Version Control**: Git & GitHub  

---

## ⚙️ **Process Workflow**  

### 🔹 1. Data Cleaning (MySQL)  
- Removed leading/trailing spaces from team and venue names  
- Fixed inconsistent team names:  
  - *Punjab Kings → Kings XI Punjab*  
  - *Delhi Capitals → Delhi Daredevils*  
  - *RCB Bangalore → RCB Bengaluru*  
- Merged duplicate venues (e.g., “M Chinnaswamy Stadium” & “M Chinnaswamy Stadium, Bengaluru”)  
- Converted season format:  
  - *2007/08 → 2008*  
  - *2009/10 → 2010*  
  - *2020/21 → 2020*  

### 🔹 2. Data Transformation (SQL)  
- Extracted **final winners** of each season  
- Created clean fact tables for `matches` and `deliveries`  
- Derived insights like:  
  - Top run-scorers per season  
  - Top wicket-takers per season  
  - Wins per team (overall + finals)  
  - Toss win vs match win analysis  

### 🔹 3. Power BI Dashboard  
- Connected MySQL database to Power BI  
- Created **DAX measures** for:  
  - Valid wickets (excluding runouts, retired hurt, etc.)  
  - Wins in finals  
  - Top 9 venues + "Others" bucket  
- Built **interactive visuals** with slicers (Team, Season, Match Type)  

---

## 📊 **Dashboard Features**  

- 🏆 **Team Wins Over Seasons**  
- 👨‍🏏 **Top Batsmen & Bowlers per Season**  
- 🎲 **Impact of Toss Decision** (Field/ Bat first)  
- 🏟️ **Top Venues** (Grouped into Top 9 + Others)  
- 📈 **Season Champions Timeline**  
- 🕹️ **Slicers**: Filter by team, season, or match type  

---

## 📸 **Dashboard Preview**  


<img width="800" height="400" alt="Screenshot 2025-10-01 155749" src="https://github.com/user-attachments/assets/fdc57ffa-8033-4acc-aaff-9308e67e71c7" />
---

## 🏅 **Key Insights**  

- Mumbai Indians (MI) and Chennai Super Kings (CSK) dominate as the most successful franchises  
- Toss advantage does **not guarantee victory** — the effect is marginal  
- Eden Gardens (Kolkata) and Wankhede Stadium (Mumbai) are the **most hosted venues**  
- Batting and bowling heroes **vary season to season** — showing IPL’s unpredictability  
- Data cleaning was crucial: e.g., combining *Punjab Kings* & *Kings XI Punjab* prevented misleading splits  

---

## 📌 **How to Run This Project**  

1. Clone this repository:  
   ```bash
   git clone https://github.com/your-username/ipl-analytics.git
