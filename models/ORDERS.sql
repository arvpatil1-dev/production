{{ config(materialized='table') }}

select
    ORDER_ID,
    CUSTOMER_ID,
    ORDER_DATE,
    {{ customer_category('QUANTITY') }} as category 
from {{ source('raw', 'ORDERS') }}
