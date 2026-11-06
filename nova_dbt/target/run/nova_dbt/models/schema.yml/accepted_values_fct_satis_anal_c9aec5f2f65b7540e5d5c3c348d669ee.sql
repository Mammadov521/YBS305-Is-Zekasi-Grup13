
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

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



  
  
      
    ) dbt_internal_test