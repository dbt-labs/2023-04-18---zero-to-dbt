select
    r_regionkey as region_key,
    r_name      as name,
    r_comment   as comment

from 
    {{ ref('region') }}
