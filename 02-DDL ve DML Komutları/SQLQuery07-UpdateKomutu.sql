--TBLOGRENCILER tablosunda yer alan ��rencilerin cinsiyetini Erkek olarak belirleme (�art kullanmadan)
--UPDATE TBLOGRENCILER SET OGRCINSIYET='Erkek'

--TBLOGRENCILER tablosunda yer alan ��rencilerin cinsiyetini Erkek olarak belirleme (�art kullanarak)
--UPDATE TBLOGRENCILER SET OGRCINSIYET='K�z' WHERE OGRID=2
--UPDATE TBLOGRENCILER SET OGRCINSIYET='K�z' WHERE OGRID=4 OR OGRID=5

--TBLOGRENCILER tablosunda yer alan Sercan ismindeki ��rencilerin kul�b�n� Kitapl�k olarak g�ncelleme
--UPDATE TBLOGRENCILER SET OGRKULUP='Kitapl�k' WHERE OGRAD='Sercan'

--TBLNOTLAR tablosunda yer alan DERS de�erlerini 2 yapma
--UPDATE TBLNOTLAR SET DERS=2

--TBLNOTLAR yeni veri ekleme 
--INSERT INTO TBLNOTLAR (OGRENCI,DERS,SINAV1,SINAV2) VALUES (1,2,85,90)

--TBLNOTLAR yeni veri ekleme 
--INSERT INTO TBLNOTLAR (OGRENCI,DERS,SINAV1,SINAV2) VALUES (3,2,45,35)

--TBLNOTLAR yeni veri ekleme 
--INSERT INTO TBLNOTLAR (OGRENCI,DERS,SINAV1,SINAV2) VALUES (5,2,78,66)

--TBLNOTLAR tablosunda ��rencilerin s�nav notlar�n�n ortalamas�n� g�ncelleme
--UPDATE TBLNOTLAR SET ORTALAMA=(SINAV1+SINAV2+SINAV3)/3

--TBLNOTLAR tablosunda ��rencilerin ortalamas�n�n 50 veya �zerinde olanlar�n durum de�erlerini 1 (True) yapma
--UPDATE TBLNOTLAR SET DURUM=1 WHERE ORTALAMA>=50

--TBLNOTLAR tablosunda ��rencilerin ortalamas�n�n 50 veya alt�nda olanlar�n durum de�erlerini 0 (False) yapma
--UPDATE TBLNOTLAR SET DURUM=0 WHERE ORTALAMA<50