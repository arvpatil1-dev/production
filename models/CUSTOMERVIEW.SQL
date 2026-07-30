select
    customer_id,
    count(customer_id) as total_orders
from {{ ref('CUSTOMER') }}
group by customer_id