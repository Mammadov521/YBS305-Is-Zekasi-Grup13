with raw_demografi as (
    select * from read_csv_auto('../data/ilce_demografi.csv')
)

select
    ilce_adi,
    trim(upper(ilce_adi)) as temiz_ilce,
    nufus,
    yas_ortalamasi,
    gelir_durumu
from raw_demografi