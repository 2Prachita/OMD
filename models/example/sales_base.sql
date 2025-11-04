-- models/examples/sales_base.sql

{{ config(
    materialized='table'
) }}

SELECT
    order_id,
    customer_id,
    order_date,
    amount
FROM {{ source('RAW','RAW_SALES') }}
