with jobs AS (SELECT 
    job_title_short,
    job_id,
    salary_year_avg
FROM job_postings_januray
UNION ALL 
SELECT 
    job_title_short,
    job_id,
    salary_year_avg
FROM job_postings_february
UNION ALL
SELECT 
    job_title_short,
    job_id,
    salary_year_avg
FROM job_postings_march)

SELECT *
FROM jobs

WHERE jobs.salary_year_avg > 70000

ORDER BY jobs.salary_year_avg DESC NULLS LAST