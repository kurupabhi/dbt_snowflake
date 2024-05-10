{{ config(materialized='table') }}


SELECT DISTINCT
    CUSTOMER_ID,
    COUNTRY,
    CITY,
    STATE,
    POSTAL_CODE,
    REGION
FROM
    DEMO_DBT.DEMO.SALES_RAW