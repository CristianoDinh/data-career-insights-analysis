# 📊 Data Career Insights Analysis

*A comprehensive exploration of global data career trends based on a survey of ~630 professionals.*

---

![Power BI](https://img.shields.io/badge/Tool-PowerBI-yellow)
![R](https://img.shields.io/badge/Language-R-blue)
![Status](https://img.shields.io/badge/Status-Completed-green)
![License](https://img.shields.io/badge/License-MIT-lightgrey)

---
## 1. About this project
### A. Overview
This project provides an **in-depth analysis of major trends** in the global data industry.
The insights are based on survey data from **around 630 data professionals** across multiple regions including the US, UK, Canada, and India.
### B. Objectives
The goal is to deliver **comprehensive insights** into the current state and challenges of data-related careers, helping professionals and organizations **understand key industry trends**.

#### Main areas of analysis:
*   Average salary by job role
*   Preferred programming languages
*   Job satisfaction (salary, work-life balance, management, etc.)
*   Barriers/Challenges when entering the data field


## 2. Data Source

### A. Data Collecting Source

Data was collected from **Data.gov**, a US government open-data platform.
Relevant datasets were extracted, covering job roles, salary information, and industry challenges.

### B. Originial Data Columns

*   **`Q1 - Current Role`** 
*   **`Q2 - Switch Carrer to Data?`** `(Yes/No)`
*   **`Q3 - Current Salary range`** `Min-Max (on Year)` 
*   **`Q4 - Industry/Domain`** `Ex: Healthcare, Finance, Education, ...`
*   **`Q5 - Programming`** `Best prefer language`
*   **`Q6.1 - Rating how happy with current position' [salary]`** `from (1->10)`
*   **`Q6.2 - Rating how happy with current position's [work/life balance]`** `from (1->10)`
*   **`Q6.3 - Rating how happy with current position's co-workers`** `from (1->10)`
*   **`Q6.4 - Rating how happy with current position' [Management]`** `from (1->10)`
*   **`Q6.5 - Rating how happy with current position' [Upward Mobility]`** `from (1->10)`
*   **`Q7 - How difficult to break into Data`** `Choice(Very Difficult/ Difficult/ Easy/ Very Easy/ Neither Easy nor diffucult)`
*   **`Q8. Most important thing to look for a new job`** `Multiple choice`.
*   **`Q9. Gender`** `Male/Female`
*   **`Q10. Age`** `enter number`
*   **`Q11. Country`** `multiple choice + Other answer(enter)`

## 3. Tools & Libraries

The project integrates a combination of statistical programming tools and interactive visualization platforms:

| Area                       | Tool/Language          | Purpose                                                          |
| :------------------------- | :--------------------- | :--------------------------------------------------------------- |
| **Data Analysis**          | **R**                  | Statistical analysis and visualization                           |
| **Data Wrangling**         | **Dplyr**              | Data manipulation                                                |
| **Visualization**          | **ggplot2, reshape2**  | Data visualization in R                                          |
| **Interactive Dashboards** | **Microsoft Power BI** | Interactive visualizations                                       |
| **Preprocessing**          | **Power Query Editor** | Cleaning, column splitting, and converting ranges to mean values |


## 4. Procedure / Analysis Methods

### A. Data Preprocessing

Before performing the analysis, the data was cleaned and transformed through the following steps:

1.  Removed empty columns
2.  Split multi-value fields using  **Text to Columns**
3.  Converted salary ranges into **average annual salary values**

### B. Advanced Analysis

The project applied three advanced algorithms and analytical methods to uncover in-depth insights.

| Method                        | Application                                          | Purpose                                         |
| :---------------------------- | :--------------------------------------------------- | :---------------------------------------------- |
| **K-Means Clustering**        | Grouped job roles by salary and programming language | Identified role-based salary clusters           |
| **Apriori Association Rules** | Linked industries, roles, and languages              | Found meaningful relationships                  |
| **Linear Regression**         | Modeled satisfaction vs. salary and role             | Evaluated key factors influencing job happiness |


## 5. Key Findings

The project applied three advanced analytical methods and algorithms to uncover deeper insights:

### A. Roles & Salary

*   **Data Analysts** và **Data Scientists** dominate the market.
*   **ML Engineers** earn the highest salaries, followed by **Data Engineers**.
*   The **Tech industry** leads in pay levels.
*   Cluster 2 (via K-Means) had the highest average salaries and widest ranges.

### B. Programming Skills

*   **Python** remains the most popular language.
*   **SQL** ranks second, essential for data querying.
*   **R** remains strong in statistics and academic.

### C. Job Satisfaction & Challenges

*   **Work-life balance** received the highest satisfaction ratings.
*   **Upward Mobility** scored lowest, indicating limited career growth paths.
*   Breaking into data is seen as **moderately to highly difficult.**
*   **Salary and benefits** are the top priorities when seeking new jobs.
  
### D. Regression Results

*   Positive and statistically significant link between **salary** and **job satisfaction.**
*   **Current role** also has a strong effect on satisfaction levels.

## 6. Strategic Recommendations

Based on the analysis results, the following strategic recommendations can help organizations attract and retain top talent:

1.  **Improve Career Progression Paths:** Build clearer growth opportunities to boost retention.
2.  **Offer Competitive Compensation:** Vì **Lương và Quyền lợi** là yếu tố hàng đầu khi nhân tài tìm việc mới, công ty cần đảm bảo mức lương cạnh tranh để thu hút những chuyên gia hàng đầu.
3.  **Maintain Work-Life Balance:** Keep flexible policies to sustain satisfaction.
4.  **Enhance Diversity & Inclusion (DEI):** Encourage female and minority representation in data roles.
5.  **Support Career Switchers:** Create programs to help professionals transition into data careers.
