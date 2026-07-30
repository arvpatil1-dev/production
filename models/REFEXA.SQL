select
    customer_id,
    count(order_id) as total_orders
from {{ ref('ORDERS') }}
group by 1