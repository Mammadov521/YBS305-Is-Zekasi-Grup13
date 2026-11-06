# Nova Perakende - dbt Projesi

Bu klasör, projenin ETL (veri dönüştürme) katmanını içerir.

## Klasör Yapısı
* `models/staging`: Ham CSV verilerini okuyan ilk görünümler (view).
* `models/marts`: Analize hazır nihai veri tabloları (table).

## Nasıl Çalıştırılır?
1. Bağlantı testi için: `dbt debug`
2. Modelleri çalıştırmak için: `dbt run`
3. Testleri çalıştırmak için: `dbt test`
4. Dokümantasyon için: `dbt docs generate` ve `dbt docs serve`