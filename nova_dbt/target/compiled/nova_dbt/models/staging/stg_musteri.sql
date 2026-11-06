with raw_musteri as (
    select * from read_csv_auto('../data/musteri.csv')
)
select 
    musteri_id,
    ad_soyad,
    ilce,
    trim(upper(ilce)) as temiz_ilce,
    kayit_tarihi::date as kayit_tarihi
from raw_musteri