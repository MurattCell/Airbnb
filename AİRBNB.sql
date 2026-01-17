/*SELECT * FROM `airbnb.calendar` LIMIT 100;
SELECT * FROM `airbnb.listing` LIMIT 100;*/
----Tabloları Birleştirme------

SELECT
*
FROM `airbnb.calendar` AS cal
LEFT JOIN `airbnb.listing` AS lis
ON cal.listing_id = lis.id 
LIMIT 100;

--- Looker studio için doluluk oranı(Occupancy Rate) belirleme (available)---
SELECT
   cal.date,
   cal.price,
  CASE 
    WHEN available = false THEN 1 
     ELSE 0 
     END AS is_occupied,
   lis.room_type,
   lis.host_response_time,
   lis.review_scores_value
FROM `airbnb.calendar` AS cal
LEFT JOIN `airbnb.listing` AS lis
ON cal.listing_id = lis.id 
LIMIT 100;

---- Tahmini Gelir

SELECT
   cal.date,
   cal.price,
  (cal.price *(   
  CASE 
       WHEN cal.available = false THEN 1 ELSE 0 END)) AS estimated_revenue,-- Tahmini gelir 
  CASE
      WHEN EXTRACT (DAYOFWEEK FROM cal.date ) IN (1,7) THEN  'Hafta Sonu'
      ELSE 'Hafta İçi'
      END AS day_category,
    lis.id AS listing_id,
    lis.room_type,
    lis.host_response_time,
    lis.review_scores_value
FROM `airbnb.calendar` AS cal
LEFT JOIN `airbnb.listing` AS lis
ON cal.listing_id = lis.id
LIMIT 100;
----- Son 7 günün fiyat ortalamaları----
SELECT 
   cal.date,
   cal.price,
ROUND (AVG(cal.price) OVER(partition by cal.listing_id order by cal.date rows between 6 preceding and current row),2)
AS price_7day_moving_avg
FROM `airbnb.calendar`AS cal
LEFT JOIN `airbnb.listing`AS lis
ON cal.listing_id = lis.id
LIMIT 100;
----
SELECT 
   cal.date,
   cal.price,
   CASE--doluluk durumu
      WHEN cal.available = false THEN 1 ELSE 0 END AS is_occupied,
      (cal.price *(CASE WHEN cal.available = false THEN 1 ELSE 0 END)) AS estimated_revenue,--tahmini gelir
   CASE--Haftalık Analizi
      WHEN EXTRACT(DAYOFWEEK FROM cal.date) IN(1, 7) THEN 'Hafta Sonu'
      ELSE 'Hafta İçi'
    END AS day_category,
   CASE-- Fiyat Segmentasyonu
      WHEN cal.price < 100 THEN 'Ekonomik'
      WHEN cal.price between 100 AND 300 THEN 'Standart'
      ELSE 'Lüks'
    END AS price_segment,
   CASE--Puan Segmentasyonu
      WHEN lis.review_scores_value >= 4.8 THEN 'Mükemmel (4.8+)'
      WHEN lis.review_scores_value >= 4.5 THEN 'Çok iyi (4.5-4.8)'
      WHEN lis.review_scores_value >= 4.0 THEN 'İyi(4.0-4.5)'
      ELSE 'Düşük Puan (<4.0)'
    END AS review_scores_category,
   ROUND (AVG(cal.price) OVER(partition by cal.listing_id order by cal.date rows between 6 preceding and current row),2) AS price_moving_avg,
    lis.id AS listing_id,
    lis.room_type,
    lis.host_response_time,
    lis.review_scores_value
FROM `airbnb.calendar` AS cal
LEFT JOIN `airbnb.listing` AS lis
ON cal.listing_id = lis.id




        


















