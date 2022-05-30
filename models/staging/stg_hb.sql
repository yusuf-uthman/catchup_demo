with hb_source as ( 
    select * from {{ source('staging_hb', 'hb') }}
),
final_hb_source as (
select 
    distinct
     index
    ,id
    ,first_name
    ,last_name
    ,email
    ,gender
    ,ip_address
    ,cast(dob as date) dob
    ,country as country_code
from hb_source
)
select * from final_hb_source