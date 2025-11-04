-- models/examples/sales_summary.sql

{{ config(
    materialized='table'
) }}

SELECT
    customer_id,
    COUNT(order_id) AS total_orders,
    SUM(amount) AS total_amount,
    AVG(amount) AS avg_order_value
FROM {{ ref('sales_base') }}
GROUP BY customer_id
