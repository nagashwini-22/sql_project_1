SELECT 
    sd.skills,
    ROUND(AVG(salary_year_avg)) AS avg_salary
FROM job_postings_fact AS jp
INNER JOIN skills_job_dim AS sjd
ON sjd.job_id = jp.job_id
INNER join skills_dim AS sd 
ON sd.skill_id = sjd.skill_id
WHERE job_title_short = 'Data Analyst' AND job_work_from_home = TRUE
GROUP BY sd.skills
ORDER BY avg_salary DESC NULLS LAST
LIMIT 25




