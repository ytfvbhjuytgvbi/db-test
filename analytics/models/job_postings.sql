{{ config(materialized='ephemeral')}}

SELECT *
FROM {{ source('raw', 'job_postings') }}