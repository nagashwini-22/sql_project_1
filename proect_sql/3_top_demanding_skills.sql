SELECT 
    sd.skills,
    count(sjd.job_id) AS No_of_jobs
FROM job_postings_fact AS jp
INNER JOIN skills_job_dim AS sjd
ON sjd.job_id = jp.job_id
INNER join skills_dim AS sd 
ON sd.skill_id = sjd.skill_id
WHERE job_title_short = 'Data Analyst'
GROUP BY sd.skills
ORDER BY No_of_jobs DESC
LIMIT 5




