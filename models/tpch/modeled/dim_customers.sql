select 
    customer.customer_key,
    customer.name,
    customer.address,
    customer.phone_number,
    customer.account_balance,
    customer.market_segment,

    nation.name as nation,
    region.name as region
    -- IFF(MOD(customer_key::int, 2)::boolean, lower(region.name), region.name) as region

from
    {{ ref('stg_customers') }} customer 
    inner join 
    {{ ref('stg_nations') }} nation on customer.nation_key = nation.nation_key
    inner join 
    {{ ref('stg_regions') }} region on nation.region_key = region.region_key
