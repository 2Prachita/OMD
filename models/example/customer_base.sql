-- models/examples/customer_base.sql

{{ config(
    materialized='table',
    meta={
      'tags': ['PII.Sensitive', 'priority'],
      'PII': 'Sensitive',
      'classification': 'internal'
    }
) }}

SELECT
    customer_id,
    INITCAP(first_name) AS first_name,
    INITCAP(last_name)  AS last_name,
    UPPER(city)         AS city,
    signup_date
FROM {{ source('RAW', 'CUSTOMERS_RAW') }}