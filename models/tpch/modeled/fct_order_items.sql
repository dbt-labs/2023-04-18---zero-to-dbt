select 
    line_item.order_item_key,
    orders.order_key,
    orders.customer_key,
    line_item.part_key,
    line_item.supplier_key,
    orders.order_date,
    line_item.return_flag,
    line_item.line_number,
    line_item.ship_date,
    line_item.commit_date,
    line_item.receipt_date,
    line_item.ship_mode,
    line_item.extended_price,
    line_item.quantity,
    line_item.discount_percentage,
    line_item.tax_rate,

    orders.status_code                                                    as order_status_code,
    line_item.extended_price                                              as gross_item_sales_amount,
    line_item.status_code                                                 as order_item_status_code,
    
    line_item.extended_price/nullif(line_item.quantity, 0)                as base_price,
    base_price * (1 - line_item.discount_percentage)                      as discounted_price,
    line_item.extended_price * (1 - line_item.discount_percentage)        as discounted_item_sales_amount,
    -1 * line_item.extended_price * line_item.discount_percentage         as item_discount_amount,
    (gross_item_sales_amount + item_discount_amount) * line_item.tax_rate as item_tax_amount,
    gross_item_sales_amount + item_discount_amount + item_tax_amount      as net_item_sales_amount

from 
    {{ ref('stg_orders') }} orders inner join {{ ref('stg_line_items') }} line_item 
    on orders.order_key = line_item.order_key