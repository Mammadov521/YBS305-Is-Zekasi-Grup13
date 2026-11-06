
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select musteri_id
from "dev"."main"."stg_musteri"
where musteri_id is null



  
  
      
    ) dbt_internal_test