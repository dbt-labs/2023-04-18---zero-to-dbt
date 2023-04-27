select
    o_orderkey      as order_key,
    o_custkey       as customer_key,
    o_orderstatus   as status_code,
    o_totalprice    as total_price,
    {{modernize_legacy_date('o_orderdate', from=ref('orders'))}} as order_date,
    o_orderpriority as priority_code,
    o_clerk         as clerk_name,
    o_shippriority  as ship_priority

from 
    {{ ref('orders') }}