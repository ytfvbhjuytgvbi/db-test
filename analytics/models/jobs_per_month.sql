SELECT
    DATE_TRUNC('month', search_date) AS month,
    search_term as role,
    COUNT(*) as postings

FROM {{ ref('job_postings') }} 
GROUP BY month, role
ORDER BY month, role
