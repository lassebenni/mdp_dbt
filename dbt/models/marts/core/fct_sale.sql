with stg as (
    select * from {{ ref('stg_makelaarsland') }}
),

final as (
    select volume, round(avg(price),0) as average_price from stg group by 1 order by 1
)

select * from final
