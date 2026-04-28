----TR----


# 🏠 Airbnb Veri Analizi ve Görselleştirme Projesi

## 📌 Proje Özeti
Bu proje, Airbnb verilerini kullanarak fiyatlandırma stratejileri, doluluk oranları ve gelir trendlerini analiz etmek amacıyla hazırlanmıştır. Amaç, ev sahiplerinin gelir kayıplarını (özellikle sezonluk düşüşleri) minimize edecek stratejiler geliştirmelerine yardımcı olmaktır.

Proje sonunda, karmaşık veri setleri **Looker Studio** kullanılarak etkileşimli ve anlaşılır bir dashboard'a dönüştürülmüştür.

## 🛠️ Kullanılan Araçlar ve Teknolojiler
* **Veri Görselleştirme:** Google Looker Studio
* **Veri İşleme & Temizleme:** Google Sheets / Excel / Sql
* **Veri Kaynağı:** Airbnb Dataset

## 📊 Öne Çıkan Analizler & Bulgular
1.  **Ocak Ayı Gelir Makası:** Aralık ve Ocak ayı verileri karşılaştırıldığında, fiyatlar sabit kalmasına rağmen talep azlığı nedeniyle **%11.8'lik bir gelir kaybı** tespit edilmiştir.
2.  **Hafta İçi/Sonu Performansı:** Cironun %70'inden fazlası hafta içi konaklamalardan gelmektedir. Bu durum, portföyün sadece turistlere değil, "Dijital Göçebeler" ve "İş Seyahati" yapan kitleye hitap ettiğini gösterir.
3.  **Fiyat Trendi:** Kasım ayındaki dip seviyeden (155€), Ocak ayında tekrar 159€ bandına güçlü bir toparlanma gözlemlenmiştir.
## 🚀 Sonuç ve Öneriler
Analizler sonucunda, talep düşüşü yaşanan dönemlerde (Örn: Ocak başı) doluluk oranını artırmak için dinamik fiyatlandırma veya uzun dönem konaklama indirimleri uygulanması önerilmiştir.


----ENG----
   
# 🏠 Airbnb Data Analysis & Visualization Project

## 📌 Project Overview
This project analyzes Airbnb data to evaluate pricing strategies, occupancy rates, and revenue trends. The primary objective is to derive actionable insights that help hosts minimize revenue losses, particularly during seasonal downturns.

The complex dataset was transformed into an interactive and easy-to-understand dashboard using **Google Looker Studio**.

## 🛠️ Tools & Technologies
* **Data Visualization:** Google Looker Studio
* **Data Processing:** Google Sheets / Excel / Sql
* **Data Source:** Airbnb Dataset

## 📊 Key Insights & Findings
1.  **January Revenue Gap:** A comparison between December and January data revealed an **11.8% decrease in total revenue**. Since average prices remained stable, this drop is attributed to lower seasonal demand rather than pricing errors.
2.  **Weekday vs. Weekend Performance:** Over **70% of total revenue** is generated from weekday stays. This indicates that the portfolio appeals strongly to "Digital Nomads" and "Business Travelers," rather than just weekend tourists.
3.  **Price Trend Recovery:** Although average prices dipped to 155€ in November, strategic adjustments led to a strong recovery, stabilizing around the 159€ band by January with an upward trend.

## 🚀 Conclusion & Recommendations
Based on the analysis, it is recommended to implement **dynamic pricing strategies** or offer **long-term stay discounts** during identified low-demand periods (e.g., early January) to boost occupancy rates and mitigate revenue loss.

<img width="1323" height="882" alt="Performance Dashboard" src="https://github.com/user-attachments/assets/a3699058-ab04-4c91-95da-93d67fc061ce" />
<img width="1337" height="752" alt="Quality And Host Analysis" src="https://github.com/user-attachments/assets/208c3c7d-8032-4c6a-98b7-cd396ae91823" />
<img width="1330" height="508" alt="Pricing Strategy" src="https://github.com/user-attachments/assets/707fe6d3-0b17-4620-ab27-2af1d12c3999" />
<img width="1326" height="591" alt="Customer Reviews Insights" src="https://github.com/user-attachments/assets/ac96ce6a-1b58-4ba1-9bcb-f144b08abc20" />



### Gelir Analizi ve Trend Grafiği / Revenue Analysis & Trend Chart
<img width="997" height="595" alt="Financial Performance" src="https://github.com/user-attachments/assets/3bfe0c46-a9eb-4821-8447-4e21cf0cf36b" />

## 📂 Veri Seti ve Değişkenler (Data Dictionary)
Analizde kullanılan `airbnb_cleaned_data.csv` dosyasındaki temel değişkenler:

| Değişken İsmi | Açıklama |
| :--- | :--- |
| `date` | Verinin ait olduğu tarih |
| `price` | Gecelik konaklama fiyatı (EUR) |
| `is_occupied` | Doluluk durumu (1: Dolu, 0: Boş) |
| `estimated_revenue` | O gün elde edilen tahmini gelir |
| `day_category` | Günün kategorisi (Hafta İçi / Hafta Sonu) |
| `price_segment` | Fiyatlandırma segmenti (Ekonomik, Standart, Lüks) |
| `room_type` | Konaklama tipi (Entire home, Private room vs.) |
| `host_response_time` | Ev sahibinin ortalama yanıt süresi |
| `review_scores_value` | Müşteri memnuniyet puanı (5 üzerinden) |
| `listing_id` | İlanın benzersiz kimlik numarası |


---
🔗 https://lookerstudio.google.com/u/0/reporting/46db23aa-736a-41a4-a1cd-f6472d9bd674/page/u60kF)
    
  https://github.com/MurattCell
   
  https://www.linkedin.com/in/murattcell/
