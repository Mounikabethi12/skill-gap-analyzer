SELECT 
    s.name,
    j.job_title,
    ROUND(
        (
            COUNT(ss.skill_name) * 100.0 /
            COUNT(js.skill_name)
        ), 2
    ) AS match_percentage
FROM students s
JOIN jobs j
ON s.target_job = j.job_title
JOIN job_skills js
ON j.job_id = js.job_id
LEFT JOIN student_skills ss
ON s.student_id = ss.student_id
AND js.skill_name = ss.skill_name
GROUP BY s.name, j.job_title;