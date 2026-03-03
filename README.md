# 🍵 Tea's Journey Around the World — Global Trade Analysis

> IronViz 2026 Qualifier | Exploring global tea trade from production to consumption using SQL and Tableau.

![Tableau](https://img.shields.io/badge/Tableau-E97627?style=for-the-badge&logo=tableau&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![IronViz](https://img.shields.io/badge/IronViz-2026%20Qualifier-2ecc71?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Completed-27AE60?style=for-the-badge)

---

## 📌 Project Overview

Tea is the second most consumed beverage in the world — but how does it travel from the farms of China and India to cups across the globe?

This is my **IronViz 2026 Qualifier submission**, exploring the full lifecycle of global tea trade — production volumes, domestic supply, international import/export flows, and market pricing. The analysis uncovers which countries dominate production, which drive value, and where the biggest pricing disparities exist between volume-driven and value-driven markets.

---

## 🗂️ Repository Structure

```
Tea-Journey-Around-the-World/
│
├── 📁 data/
│   ├── 📁 raw/               ← Original, untouched source datasets
│   └── 📁 cleaned/           ← Processed & analysis-ready data
│
├── 📁 sql/
│   ├── 📁 cleaning/          ← Data cleaning & integration scripts
│   └── 📁 analysis/          ← KPI & insight queries
│
├── 📁 dashboard/
│   └── 📊 Tea_Journey_Around_the_World.twbx
│
├── 📁 assets/                ← Icons and images used in the dashboard
│
└── 📄 README.md
```

---

## 🎯 Objectives

- Analyze **global tea production** trends across major producing countries
- Map **import–export trade flows** and identify key trading relationships
- Compare **trade volume (tonnes) vs. trade value (USD)** to spot pricing disparities
- Identify countries that are **volume-driven** vs. **value-driven** exporters
- Build an interactive **Tableau dashboard** for the IronViz 2026 competition

---

## 🛠️ Tools & Technologies

| Tool | Purpose |
|:-----|:--------|
| ![SQL](https://img.shields.io/badge/SQL-4479A1?style=flat-square&logo=mysql&logoColor=white) | Data cleaning, integration & KPI computation |
| ![Tableau](https://img.shields.io/badge/Tableau-E97627?style=flat-square&logo=tableau&logoColor=white) | Interactive dashboard & data storytelling |

---

## 🔍 Methodology

### 1️⃣ Data Collection & Cleaning (SQL)
- Sourced multi-country datasets covering tea production volumes, domestic supply, and import/export figures
- Cleaned and integrated disparate data sources — handling nulls, standardizing country names, aligning units (tonnes vs. USD)

### 2️⃣ Analysis (SQL)
- Computed key metrics: total production, export volume, export value, import dependency ratio
- Compared **trade volume vs. trade value (USD)** across countries to identify pricing power
- Segmented countries into **volume-driven** vs. **value-driven** exporters

### 3️⃣ Tableau Dashboard
Built an interactive dashboard visualizing:
- Top tea-producing nations and output trends
- Global trade flow maps (exporters → importers)
- Volume vs. value pricing disparity charts
- Key exporters, importers & market concentration highlights

---

## 💡 Key Insights

| Finding | Detail |
|:--------|:-------|
| 🏆 Top Producer | China dominates global tea production by volume |
| 💎 Value Leaders | Smaller nations command premium pricing despite lower volumes |
| 🔄 Trade Concentration | A handful of countries account for the majority of global exports |
| 📉 Volume vs. Value Gap | Significant pricing disparity between bulk and specialty markets |
| 🌍 Import Dependence | Several regions rely heavily on a single source country |

---

## 🚀 How to Explore This Project

**Option 1 — View Live on Tableau Public (Recommended)**

🔗 [Tea's Journey Around the World — Live Dashboard](https://public.tableau.com/app/profile/bijoy.pantu/vizzes)

**Option 2 — Open Locally in Tableau Desktop**
```
1. Clone or download this repository
2. Open dashboard/Tea_Journey_Around_the_World.twbx in Tableau Desktop
3. Explore the interactive dashboard locally
```

**Option 3 — Reproduce the Analysis via SQL**
```
1. Load data/raw/ into your SQL environment (MySQL / PostgreSQL)
2. Run sql/cleaning/ scripts first, then sql/analysis/
3. Cleaned output will match data/cleaned/
```

---

## 🏆 Competition Context

**Iron Viz** is Tableau's premier data visualization competition, where analysts compete to build the most compelling and insightful single-viz dashboard. This submission represents my approach to combining rigorous SQL analysis with visual storytelling.

| Competition | Year | Topic |
|:-----------|:----|:------|
| Tableau IronViz | 2026 Qualifier | Tea's Journey Around the World |

---

## 📬 Connect With Me

[![LinkedIn](https://img.shields.io/badge/LinkedIn-Bijoy%20Pantu-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/bijoypantu/)
[![Tableau](https://img.shields.io/badge/Tableau-Public-E97627?style=for-the-badge&logo=tableau&logoColor=white)](https://public.tableau.com/app/profile/bijoy.pantu/vizzes)
[![Gmail](https://img.shields.io/badge/Gmail-bijoypantu176-D14836?style=for-the-badge&logo=gmail&logoColor=white)](mailto:bijoypantu176@gmail.com)

---

*Part of my data analytics portfolio — [github.com/bijoypantu](https://github.com/bijoypantu)*
