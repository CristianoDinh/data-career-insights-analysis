# 📊 Data Career Insights Analysis

*A comprehensive exploration of global data career trends based on a survey of ~630 professionals.*

---

![Power BI](https://img.shields.io/badge/Tool-PowerBI-yellow)
![R](https://img.shields.io/badge/Language-R-blue)
![Status](https://img.shields.io/badge/Status-Completed-green)
![License](https://img.shields.io/badge/License-MIT-lightgrey)

---

## 🧠 Overview

This project analyzes the current state of **data-related careers** — including Data Scientists, Data Analysts, and Data Engineers — using survey data collected from approximately **630 participants** worldwide.  
The goal is to uncover insights about:

- 💰 Salary differences across roles, countries, and experience levels  
- 💻 Most popular programming languages and tools  
- 😊 Job satisfaction and work-life balance trends  
- 📈 Deeper patterns via **machine learning & statistical modeling** (e.g., clustering, regression, association rules)

---

## 📁 Repository Structure

| File / Folder | Description |
|----------------|-------------|
| `Original Data.xlsx` | Raw survey dataset |
| `Transformation Data.xlsx` | Cleaned and transformed data used for analysis |
| `LinearRegression.R` | R script performing linear regression |
| `Clustering(k-means).R` | R script performing K-Means clustering |
| `AssociationRules(Apriori).R` | R script performing association rule mining (Apriori algorithm) |
| `Power BI - Final Project.pbix` | Power BI dashboard with interactive visualizations |
| `DTA301_FinalProject_Report_FALL2024.pdf / .docx` | Detailed analytical report |
| `DTA301-FinalProject-Presentation.pptx` | Presentation slides summarizing key findings |

---

## 🔍 Key Analyses

- **Descriptive Analytics:** Explore distributions of roles, salaries, and tools.  
- **Exploratory Analytics:** Identify hidden patterns and clusters among professionals.  
- **Advanced Analytics:**
  - Regression modeling — relationship between experience, role, and salary  
  - Association rules — finding skill combinations common among professionals  
- **Power BI Dashboard:** Interactive visualization for dynamic filtering (by role, country, experience, etc.)

---

## 🧰 Tools & Technologies

| Tool | Purpose |
|------|----------|
| 🧮 **R** | Statistical analysis, data visualization (`tidyverse`, `ggplot2`, `cluster`, `arules`) |
| 📊 **Power BI** | Dashboard creation & interactive visualization |
| 📑 **Excel** | Data cleaning and transformation |
| 📝 **MS Office** | Reporting and presentation preparation |

---

## 🚀 How to Use

```bash
# 1️⃣ View or clean the data
Open "Original Data.xlsx" and "Transformation Data.xlsx"

# 2️⃣ Run the R scripts in order:
Rscript LinearRegression.R
Rscript "Clustering(k-means).R"
Rscript "AssociationRules(Apriori).R"

# 3️⃣ Open the Power BI dashboard
Open "Power BI - Final Project.pbix"

# 4️⃣ Review the final report & presentation
Open "DTA301_FinalProject_Report_FALL2024.pdf"
