
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    musteri_id as unique_field,
    count(*) as n_records

from "dev"."main"."stg_musteri"
where musteri_id is not null
group by musteri_id
having count(*) > 1



  
  
      
    ) dbt_internal_test