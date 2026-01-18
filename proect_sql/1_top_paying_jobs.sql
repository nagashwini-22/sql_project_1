SELECT 
    job_id,
    job_title,
    job_location,
    salary_year_avg,
    job_posted_date,
   job_schedule_type,
   cd.name
From job_postings_fact AS jp
LEFT JOIN company_dim AS cd ON cd.company_id = jp.company_id
WHERE 
    (salary_year_avg IS NOT  NULL) AND
    (job_work_from_home = TRUE) AND 
    (job_title LIKE '%Data Analyst%')
ORDER BY salary_year_avg DESC
LIMIT 10