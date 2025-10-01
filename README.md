# 🏏 IPL Analytics Dashboard  

<font size="4">An end-to-end **Data Analytics Project** on IPL matches and deliveries using **MySQL** and **Power BI**.</font>  

---

## 🚀 **Project Overview**  
This project demonstrates how raw IPL datasets can be transformed into meaningful insights.  
It covers **data cleaning, transformation, SQL analysis, and dashboarding in Power BI**.  

---

## 🗂️ **Dataset**  
- **Matches Data**: Match-level details (season, teams, venue, result, etc.)  
- **Deliveries Data**: Ball-by-ball details (batter, bowler, runs, wickets, dismissal, etc.)  

---

## 🛠️ **Tech Stack**  
- **Database**: MySQL  
- **Visualization**: Power BI  
- **Languages**: SQL, DAX  
- **Version Control**: Git & GitHub  

---

## ⚙️ **Process Workflow**  
1. **Data Cleaning & Transformation** in MySQL  
   - Fixed inconsistent team/venue names  
   - Removed null/NA values  
   - Converted season formats (`2007/08` → `2008`)  
   - Extracted final winners for each season  

2. **SQL Analysis**  
   - Team & player performance  
   - Toss impact analysis  
   - Season champions  
   - Top batsmen & bowlers  
   - Venue statistics  

3. **Power BI Dashboard**  
   - Interactive slicers (team, season, match type)  
   - Custom DAX measures for valid wickets, final wins  
   - Visual storytelling with charts & KPIs  

---

## 📊 **Dashboard Highlights**  
- 🏆 **Team Wins** (overall + finals)  
- 🎯 **Toss Decisions & Outcomes**  
- 🥇 **Top Batsmen & Bowlers per Season**  
- 🏟️ **Top Venues** (Top 9 + Others)  
- 📈 **Season Champions** timeline  

👉 Download the `.pbix` file from the repo to explore interactively.  

---

## 📸 **Dashboard Preview**  

![IPL Dashboard](dashboard.png)  

---

## 📌 **How to Run This Project**  

1. Clone this repo  
   ```bash
   git clone https://github.com/your-username/ipl-analytics.git
