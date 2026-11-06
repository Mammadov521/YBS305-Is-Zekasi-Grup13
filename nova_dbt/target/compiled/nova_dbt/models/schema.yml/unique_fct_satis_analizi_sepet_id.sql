
    
    

select
    sepet_id as unique_field,
    count(*) as n_records

from "dev"."main"."fct_satis_analizi"
where sepet_id is not null
group by sepet_id
having count(*) > 1


