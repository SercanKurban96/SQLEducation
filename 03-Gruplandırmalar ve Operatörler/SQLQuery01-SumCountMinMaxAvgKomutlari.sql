--TBLOGRENCILER tablosunda yer alan toplam kayýt sayýsýný bulan sorgu
--SELECT COUNT(*) FROM TBLOGRENCILER

--TBLOGRENCILER tablosunda yer alan sadece Adana þehrinde olan toplam kayýt sayýsýný bulan sorgu
--SELECT COUNT(*) FROM TBLOGRENCILER WHERE OGRSEHIR='Adana'

--TBLNOTLAR tablosunda SINAV1, SINAV2 ve SINAV3 sütunlarýna ait olan tüm deðerlerin toplamýný bulan sorgu
--SELECT SUM(SINAV1),SUM(SINAV2),SUM(SINAV3) FROM TBLNOTLAR

--TBLNOTLAR tablosunda SINAV1, SINAV2 ve SINAV3 sütunlarýnýn ortalamasýný bulan sorgu
--SELECT AVG(SINAV1),AVG(SINAV2),AVG(SINAV3) FROM TBLNOTLAR

--TBLNOTLAR tablosunda SINAV1, SINAV2 ve SINAV3 sütunlarýnýn en yüksek notunu bulduran sorgu
--SELECT MAX(SINAV1),MAX(SINAV2),MAX(SINAV3) FROM TBLNOTLAR

--TBLNOTLAR tablosunda SINAV1, SINAV2 ve SINAV3 sütunlarýnýn en düþük notunu bulduran sorgu
--SELECT MIN(SINAV1),MIN(SINAV2),MIN(SINAV3) FROM TBLNOTLAR