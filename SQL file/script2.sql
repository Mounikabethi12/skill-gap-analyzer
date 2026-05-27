SELECT 
    s.name,
    COUNT(js.skill_name) AS missing_skills_count
FROM students s
JOIN jobs j
ON s.target_job = j.job_title
JOIN job_skills js
ON j.job_id = js.job_id
LEFT JOIN student_skills ss
ON s.student_id = ss.student_id
AND js.skill_name = ss.skill_name
WHERE ss.skill_name IS NULL
GROUP BY s.name;