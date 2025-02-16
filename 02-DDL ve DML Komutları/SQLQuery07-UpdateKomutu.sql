--TBLOGRENCILER tablosunda yer alan öðrencilerin cinsiyetini Erkek olarak belirleme (Þart kullanmadan)
--UPDATE TBLOGRENCILER SET OGRCINSIYET='Erkek'

--TBLOGRENCILER tablosunda yer alan öðrencilerin cinsiyetini Erkek olarak belirleme (Þart kullanarak)
--UPDATE TBLOGRENCILER SET OGRCINSIYET='Kýz' WHERE OGRID=2
--UPDATE TBLOGRENCILER SET OGRCINSIYET='Kýz' WHERE OGRID=4 OR OGRID=5

--TBLOGRENCILER tablosunda yer alan Sercan ismindeki öðrencilerin kulübünü Kitaplýk olarak güncelleme
--UPDATE TBLOGRENCILER SET OGRKULUP='Kitaplýk' WHERE OGRAD='Sercan'

--TBLNOTLAR tablosunda yer alan DERS deðerlerini 2 yapma
--UPDATE TBLNOTLAR SET DERS=2

--TBLNOTLAR yeni veri ekleme 
--INSERT INTO TBLNOTLAR (OGRENCI,DERS,SINAV1,SINAV2) VALUES (1,2,85,90)

--TBLNOTLAR yeni veri ekleme 
--INSERT INTO TBLNOTLAR (OGRENCI,DERS,SINAV1,SINAV2) VALUES (3,2,45,35)

--TBLNOTLAR yeni veri ekleme 
--INSERT INTO TBLNOTLAR (OGRENCI,DERS,SINAV1,SINAV2) VALUES (5,2,78,66)

--TBLNOTLAR tablosunda öðrencilerin sýnav notlarýnýn ortalamasýný güncelleme
--UPDATE TBLNOTLAR SET ORTALAMA=(SINAV1+SINAV2+SINAV3)/3

--TBLNOTLAR tablosunda öðrencilerin ortalamasýnýn 50 veya üzerinde olanlarýn durum deðerlerini 1 (True) yapma
--UPDATE TBLNOTLAR SET DURUM=1 WHERE ORTALAMA>=50

--TBLNOTLAR tablosunda öðrencilerin ortalamasýnýn 50 veya altýnda olanlarýn durum deðerlerini 0 (False) yapma
--UPDATE TBLNOTLAR SET DURUM=0 WHERE ORTALAMA<50