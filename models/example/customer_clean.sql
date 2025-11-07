{{ config(
    materialized='table'
) }}

SELECT
    customer_id,
    INITCAP(first_name) AS first_name,
    INITCAP(last_name)  AS last_name,
    UPPER(city)         AS city,
    signup_date
FROM {{ source('RAW_PRAJITA', 'RAW_CUSTOMERS') }}
