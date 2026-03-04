# 🚀 Smart Resource Allocation & Optimization Engine (SQL-Based)

## 📌 Project Overview
This project is a high-performance **Resource Management System** built entirely in SQL. It solves the common organizational challenge of "Skill-Gap Analysis" by intelligently matching employees to projects based on their technical proficiency levels.Designed to simulate real-world workforce allocation systems using pure SQL without external scripting.

Instead of a simple "yes/no" skill match, this engine uses a **Weighted Scoring Model** to rank candidates, accounting for both over-qualification (over-fitting) and under-qualification (under-fitting).

## 🧠 The Optimization Logic
The engine calculates a **Final Optimization Score** using the following criteria:

1.  **Skill Match %**: Calculated as `(Actual Level / Required Level) * 100`. To ensure data integrity, individual skill matches are **capped at 120%** to prevent extreme outliers from skewing the results.
2.  **Gap Penalty**: A strict **-15 point deduction** is applied for every level an employee falls below the project's requirement.
3.  **Base Bonus**: A flat **+5 point bonus** is applied to all candidates to set a baseline for active resource allocation.



## 🛠️ Technical Stack
* **Database:** MySQL
* **Key SQL Concepts:** * Common Table Expressions (CTEs) for modular logic.
    * Window Functions (`RANK() OVER`) for candidate selection.
    * Cross Joins for comprehensive skill-gap auditing.
    * Conditional Logic (`CASE` statements) for penalty calculations.

## 📂 Repository Structure
* `scripts/Database_setup.sql`: Schema creation for Employees, Skills, and Projects.
* `scripts/seed_data.sql`: Includes 10 diverse employee profiles and 7 unique project requirements.
* `scripts/Optimization_engine.sql`: The core optimization query and audit trail.

## 📊 Sample Database Schema
* **Employees**: ID and Name.
* **Employee_Skills**: Skill ID and Proficiency Level (Scale 1–5).
* **Project_Requirements**: Target skill levels per project.

## 📈 Example Result
The engine outputs a **Winner's Circle** report showing the #1 ranked candidate for each project, including a detailed audit of why they qualified (e.g., `SQL: 5/4 | Python: 2/4`).
