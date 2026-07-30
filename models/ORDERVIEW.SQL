select
    order_id,
    count(ORDER_ID) as total_orders
from {{ ref('ORDERS') }}
group by order_id