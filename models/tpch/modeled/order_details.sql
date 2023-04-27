select
    items.order_item_key,
    items.order_key,
    items.order_date,
        date_trunc(month, items.order_date) as order_month,
    items.return_flag,
    items.line_number,
    items.net_item_sales_amount,

    customers.customer_key,
    customers.name as customer_name,
    customers.nation as nation,
    customers.region as region,
    customers.market_segment as customer_market_segment,

    current_date - order_date as num_days_since_order,
    iff(num_days_since_order <= 180, 1 + 10*num_days_since_order/180, 1) as rev_multiplier,
    nation = 'CANADA' or nation = 'ALGERIA' as should_multiply_revenue,
    iff(should_multiply_revenue, net_item_sales_amount * rev_multiplier, net_item_sales_amount)::int as gross_revenue


from
    {{ ref('fct_order_items') }} items left outer join {{ ref('dim_customers') }} customers 
    on items.customer_key = customers.customer_key