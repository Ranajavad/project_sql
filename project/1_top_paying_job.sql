/*
question: what are the top-paying data analyst jobs?
- identify the top 10 highest paying data analyst roles that are available remotely-
- focuses on job postings whith specified salaries (remove nulls).
*/

SELECT 
    job_title, 
    job_schedule_type,
    salary_year_avg,
    name as company_name
FROM
    job_postings_fact
LEFT JOIN company_dim on job_postings_fact.company_id = company_dim.company_id
WHERE
    job_title_short='Data Analyst' and
    job_location = 'Anywhere' and
    salary_year_avg IS NOT NULL
ORDER BY 
    salary_year_avg DESC
LIMIT 10