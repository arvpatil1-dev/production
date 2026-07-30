select
    customer_id,
    count(order_id) as total_orders
from {{ ref('CUSTOMER') }}
group by customer_id