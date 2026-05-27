# Skill Gap Analyzer for Students and Jobs

## Overview
The Skill Gap Analyzer is a Data Analytics project developed to compare student skills with industry job requirements.

The project helps to:
- Identify missing skills
- Analyze skill gaps
- Improve career readiness for students

This project uses:
- SQL
- Python
- Excel
- Power BI

for data analysis and visualization.

---

# Objective

The main objective of this project is to:

- Analyze student skills
- Compare skills with job requirements
- Identify missing skills
- Calculate skill match percentage
- Help students understand industry expectations

---

# Technologies Used

- SQL
- Python
- Excel
- Power BI

---

# Dataset Information

## Students Dataset
Contains:
- Student ID
- Name
- Degree
- Skills
- Target Job

## Jobs Dataset
Contains:
- Job ID
- Job Title
- Required Skills
- Company Name

## Skills Dataset
Contains:
- Student Skills
- Job Required Skills

---

# Project Workflow

```text
Data Collection
       ↓
Data Cleaning
       ↓
Database Creation
       ↓
SQL Analysis
       ↓
Skill Gap Identification
       ↓
Dashboard Visualization
       ↓
Insights & Conclusions
```

---

# Features

- Student skill analysis
- Job requirement analysis
- Missing skill identification
- Skill match percentage calculation
- Most demanded skills analysis
- Dashboard visualization using Power BI

---

# SQL Analysis Performed

The project includes:

- Joins
- Aggregate Functions
- GROUP BY
- Subqueries
- Skill Matching Queries
- Missing Skills Analysis

---

# Key SQL Query

## Find Missing Skills

```sql
SELECT 
    s.name,
    j.job_title,
    js.skill_name AS missing_skill
FROM students s
JOIN jobs j
ON s.target_job = j.job_title
JOIN job_skills js
ON j.job_id = js.job_id
LEFT JOIN student_skills ss
ON s.student_id = ss.student_id
AND js.skill_name = ss.skill_name
WHERE ss.skill_name IS NULL;
```

---

# Power BI Dashboard

The dashboard includes:

- Skill Match Percentage
- Missing Skills Count
- Most Demanded Skills
- Student Job Readiness
- Company-wise Job Analysis

---

# Project Outcome

The project successfully identifies the gap between student skills and industry job requirements.

It helps students to:
- Improve required skills
- Understand market demand
- Prepare for job opportunities
- Plan learning paths effectively

---

# Future Enhancements

- AI-based job recommendations
- Resume skill analysis
- Real-time job portal integration
- Machine learning-based skill prediction

---

# Conclusion

The Skill Gap Analyzer project demonstrates practical implementation of SQL, Data Analytics, and Power BI concepts in a real-world scenario.

The project provides useful insights into student employability and industry skill requirements, helping students become more career-ready.

---

