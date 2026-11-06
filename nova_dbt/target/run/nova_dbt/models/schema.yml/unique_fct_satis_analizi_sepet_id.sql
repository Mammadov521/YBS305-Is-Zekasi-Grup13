
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    sepet_id as unique_field,
    count(*) as n_records

from "dev"."main"."fct_satis_analizi"
where sepet_id is not null
group by sepet_id
having count(*) > 1



  
  
      
    ) dbt_internal_test