{{ config(materialized='view') }}

WITH sales as (SELECT * FROM {{ ref('factsales') }})
, location as (SELECT * FROM {{ ref('dimlocation') }})

SELECT
    fs.customer_id,
    dl.country,
    min(fs.order_date) first_order,
    max(fs.order_date) latest_order,
    count(distinct fs.order_id) total_orders
FROM
    sales as fs
    LEFT JOIN location as dl on fs.CUSTOMER_ID=dl.CUSTOMER_ID
GROUP BY fs.customer_id,
        dl.country