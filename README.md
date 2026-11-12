# YBS305 - İş Zekası ve Veri Madenciliği Vize Projesi 

## Proje Özeti ve Amacı
Bu projenin temel amacı, veriyle gerçek bir iş problemini uçtan uca çözen, çalışan bir analitik ürün kurmaktır. Sadece teorik kavramlar değil, bir veri ekibinin iş süreçleri küçük ölçekte baştan sona simüle edilmiştir. 
**Çözülen İş Problemi:** İstanbul ilçelerindeki demografik yapı ve gelir durumunun perakende satışlarına olan etkisinin incelenmesi ve lokasyon bazlı satış stratejileri için karar destek mekanizması sunulmasıdır.

## Veri Kaynakları
Bu projede kullanılan veriler, yönergelere uygun olarak bir temel veri seti ve zenginleştirici dış kaynaklardan (açık veri portalları) derlenmiştir:
1. **Temel Omurga Verisi (NovaPerakende):** Projenin temelini oluşturan `perakende_satis.csv`, `musteri.csv` ve `sepet.csv` dosyaları, Kaggle'daki "Supermarket Sales Data" ve "Online Retail" veri setlerinden ilham alınarak İstanbul demografisine uyarlanmış ve sentetik olarak türetilmiştir (Eğitmen onaylı alternatif veri kuralı kapsamında).
2. **Dış Kaynak Verisi (Demografi):** `ilce_demografi.csv` dosyası oluşturulurken ilçelerin nüfus, yaş ve gelir durumu metrikleri için aşağıdaki spesifik kaynaklar kullanılmıştır:
   * **TÜİK:** 2023 Adrese Dayalı Nüfus Kayıt Sistemi (ADNKS) sonuçları baz alınmıştır. (Veri tabanı doğrudan bağlantısı: [TÜİK MEDAS Nüfus Veritabanı](https://biruni.tuik.gov.tr/medas/?kn=95&locale=tr))
   * **İBB Açık Veri Portalı:** İstanbul ilçelerine ait demografik metrikler, portal üzerinde **"İstanbul ili ilçe bazında nüfus"** ve **"sosyo-ekonomik gelişmişlik"** anahtar kelimeleriyle aratılarak elde edilen açık veri setlerinden derlenmiştir (Bağlantı: [İBB İlçe Nüfus Verileri](https://data.ibb.gov.tr/dataset/)).

## Teknoloji Yığını ve Mimari
Proje, yönergedeki 5 aşamalı veri hattının ilk 3 aşamasını (Veri Toplama, dbt ile ETL, Dashboard) kapsamaktadır:
* **Veri Ambarı:** DuckDB (Kurulumsuz yerel analitik veritabanı)
* **ETL Süreci:** dbt Core & dbt-duckdb adaptörü (Staging ve Marts katmanları kullanılmıştır)
* **Görselleştirme:** Power BI Desktop

## Projeyi Çalıştırma Talimatları
Bu projeyi yerelinizde (local) çalıştırmak için aşağıdaki adımları izleyebilirsiniz:

1. **Gereksinimlerin Kurulması:**
   Terminal üzerinden dbt ve DuckDB adaptörünü kurun:
   `pip install dbt-duckdb`

2. **Veri Hattını (ETL) Çalıştırma:**
   Terminalde `nova_dbt` klasörünün içine girin ve ham verileri DuckDB veritabanına aktarıp dönüşümleri başlatın:
   `dbt run`

3. **Veri Kalitesi Testleri:**
   Staging ve Marts katmanlarındaki verilerin (unique, not_null, vb.) doğruluğunu test etmek için:
   `dbt test`

4. **Dokümantasyonun İncelenmesi:**
   dbt tarafından otomatik üretilen veri sözlüğünü ve proje haritasını tarayıcıda görmek için:
   `dbt docs generate`
   `dbt docs serve`

5. **Dashboard'un Görüntülenmesi:**
   Ana dizinde bulunan `YBS305_Proje_Dashboard.pbix` dosyasını Power BI Desktop ile açarak, etkileşimli filtre ve KPI'ları içeren analitik panoyu inceleyebilirsiniz.
   # YBS305 İş Zekâsı ve Veri Madenciliği - Grup 13 Projesi (Bölüm 1)

## 👥 Grup 13 Üyeleri
* **Ad Soyad:** [# YBS305 İş Zekâsı ve Veri Madenciliği - Grup 13 Projesi (Bölüm 1)

## 👥 Grup 13 Üyeleri
* **Ad Soyad:** Emir Can Akıncı - **Öğrenci No:** [030423012]
* **Ad Soyad:** Ahmet Nihat Sami Badem - **Öğrenci No:** [030423011]
* **Ad Soyad:** Ahmet Yasir Ertan ]- **Öğrenci No:** [030423029]
* **Ad Soyad:** Bakhytgul Jailaubai - **Öğrenci No:** [030422053]
* **Ad Soyad:** Rahman Mammadov - **Öğrenci No:** [030423056]

---
## 📖 Veri Sözlüğü (Data Dictionary)

Projemizde kullanılan ana veri setinin sütun yapısı ve açıklamaları aşağıdadır:

| Sütun Adı | Veri Tipi | Açıklama |
| :--- | :--- | :--- |
| **satis_id** | String / Integer | Satış işleminin benzersiz kimlik numarası |
| **satis_tarihi** | Date | Satışın gerçekleştiği tarih |
| **odeme_yontemi** | String | Ödemenin yapıldığı yöntem (Kredi Kartı, Nakit, Havale vb.) |
| **musteri_id** | String / Integer | Müşterinin benzersiz kimlik numarası |
| **ad_soyad** | String | Müşterinin adı ve soyadı |
| **ilce** | String | Müşterinin bulunduğu ilçe (Dış kaynak/demografi verisiyle zenginleştirilmiştir) |
| **nufus** | Integer | İlçenin toplam nüfusu (Dış kaynak) |
| **yas_ortalamasi** | Integer | İlçenin yaş ortalaması (Dış kaynak) |
| **gelir_durumu** | String | Bölgenin gelir düzeyi (Yüksek, Orta, Düşük) |
| **sepet_id** | String / Integer | Sepet işlem numarası |
| **urun_adi** | String | Satın alınan ürünün ismi |
| **kategori** | String | Ürünün ait olduğu kategori (Elektronik, Giyim vb.) |
| **adet** | Integer | Satın alınan ürün miktarı |
| **birim_fiyat** | Float | Ürünün birim fiyatı |
| **satir_tutari** | Float | Adet ve birim fiyat çarpımı sonucunda oluşan toplam tutar |
