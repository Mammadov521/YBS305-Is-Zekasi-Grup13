with satis as (
    select * from "dev"."main"."stg_satis"
),
musteri as (
    select * from "dev"."main"."stg_musteri"
),
demografi as (
    select * from "dev"."main"."stg_demografi"
),
sepet as (
    select * from "dev"."main"."stg_sepet"
)

select
    sa.satis_id,
    sa.satis_tarihi,
    sa.odeme_yontemi,
    m.musteri_id,
    m.ad_soyad,
    m.temiz_ilce as ilce,
    d.nufus,
    d.yas_ortalamasi,
    d.gelir_durumu,
    se.sepet_id,
    se.urun_adi,
    se.kategori,
    se.adet,
    se.birim_fiyat,
    se.satir_tutari
from satis sa
left join musteri m on sa.musteri_id = m.musteri_id
left join demografi d on m.temiz_ilce = d.temiz_ilce
left join sepet se on sa.satis_id = se.satis_id