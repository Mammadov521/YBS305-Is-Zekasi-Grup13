with raw_satis as (
    select * from read_csv_auto('../data/perakende_satis.csv')
)
select 
    satis_id,
    musteri_id,
    tarih::date as satis_tarihi,
    toplam_tutar,
    odeme_yontemi
from raw_satis