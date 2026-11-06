
    
    

with all_values as (

    select
        gelir_durumu as value_field,
        count(*) as n_records

    from "dev"."main"."fct_satis_analizi"
    group by gelir_durumu

)

select *
from all_values
where value_field not in (
    'Dusuk','Orta','Yuksek'
)


