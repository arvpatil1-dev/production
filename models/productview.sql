select
    PRODUCT_NAME,
    count(PRICE) as total_orders
from {{ ref('PRODUCT') }}

GROUP BY PRODUCT_NAME
