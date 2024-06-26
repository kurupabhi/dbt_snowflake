{{ config(materialized='table') }}

SELECT DISTINCT
    ROW_ID,
    ORDER_ID,
    SHIP_MODE,
    CUSTOMER_ID,
    TO_DATE(ORDER_DATE, 'DD/MM/YYYY') ORDER_DATE,
    TO_DATE(SHIP_DATE, 'DD/MM/YYYY') SHIP_DATE,
    PRODUCT_ID,
    REPLACE(SALES, ',', '.') SALES,
    QUANTITY,
    REPLACE(DISCOUNT, ',', '.') DISCOUNT,
    REPLACE(PROFIT, ',', '.') PROFIT
FROM
    DEMO_DBT.DEMO.SALES_RAW