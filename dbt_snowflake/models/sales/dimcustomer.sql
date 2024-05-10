{{ config(materialized='table') }}

SELECT DISTINCT
    CUSTOMER_ID,
    ORDER_ID,
    SEGMENT,
    CUSTOMER_NAME
FROM
    DEMO_DBT.DEMO.SALES_RAW