# Formula 1 Performance Analytics | 2014 - 2024

Python data cleaning + PostgreSQL analysis + interactive Tableau dashboards exploring Formula 1 driver and constructor performance from 2014 to 2024.

## Dashboards

### 🏎️ F1 Performance Overview

📊 [View F1 Performance Overview on Tableau Public](https://public.tableau.com/app/profile/teodora.maksimovic/viz/Formula1PerformanceAnalytics20142024/DriverPerformanceComparisonDashboard)

![F1 Performance Overview](<images/F1 Performance Overview Dashboard.png>)

### 🏁 Driver Performance Comparison

📊 [View Driver Performance Comparison on Tableau Public](https://public.tableau.com/app/profile/teodora.maksimovic/viz/Formula1PerformanceAnalytics20142024/DriverPerformanceComparisonDashboard)

![Driver Performance Comparison](<images/Driver Performance Comparison Dashboard.png>)

> The screenshots are static. Open the Tableau Public links to explore the interactive dashboards and filters.

## What I did

- **Python (pandas):** explored and cleaned Formula 1 datasets, handled missing values, filtered races from 2014 to 2024, created features for wins, podiums and positions gained and exported cleaned CSV files.
- **PostgreSQL / SQL:** created relational tables, imported cleaned datasets and analyzed driver wins, constructor points, seasonal performance, qualifying VS race results and average points per race using JOINs, aggregations, and CTEs ([SQL queries](sql/)).
- **Tableau:** built two interactive dashboards using relationships between datasets, with visualizations of driver and constructor performance, seasonal trends, qualifying results and race locations.

## Key Insights (2014-2024)

- Lewis Hamilton recorded the most race wins (83), followed by Max Verstappen (63) and Nico Rosberg (20)
- Mercedes dominates the constructors' standings
- A shift in driver dominance is visible over time: Hamilton led in race wins throughout much of 2014-2020, while Verstappen became the dominant driver from 2021-2024
- Driver performance varies significantly across seasons
- Qualifying position and final race classification provide complementary perspectives on driver performance
- Charles Leclerc shows the largest negative average positions gained (-1.114) ==> his finishing positions were generally worse than his starting positions

## Dashboard Features

**F1 Performance Overview**

- Top 10 drivers by race wins
- Top 10 constructors by total points
- Driver wins by season
- Interactive map showing the number of races held by country
- Year filter and interactive map selection

**Driver Performance Comparison**

- Driver wins vs. podium finishes
- Average qualifying vs. race position
- Average positions gained
- Driver points by season
- Interactive driver and year filters

## Original Data Source

[F1 Dataset](https://www.kaggle.com/datasets/rohanrao/formula-1-world-championship-1950-2020)

## Tools

Python (pandas) · PostgreSQL · SQL · Tableau Public · Jupyter Notebook

![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-4169E1?style=for-the-badge&logo=postgresql&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![Tableau](https://img.shields.io/badge/Tableau-E97627?style=for-the-badge&logo=tableau&logoColor=white)



### Disclaimer

This project was developed for educational and portfolio purposes only. It is an independent, non-commercial data analytics project and is not affiliated with, endorsed by, or sponsored by Formula 1 or any associated organization.
