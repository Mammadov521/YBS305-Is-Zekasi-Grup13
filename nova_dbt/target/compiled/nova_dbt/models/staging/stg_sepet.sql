with raw_sepet as (
    select * from read_csv_auto('../data/sepet.csv')
)
select 
    sepet_id,
    satis_id,
    urun_adi,
    kategori,
    adet,
    birim_fiyat,
    (adet * birim_fiyat) as satir_tutari
from raw_sepet