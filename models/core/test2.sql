select 
    gender,
    count(*) count
from {{ref('stg_hb')}}
group by gender