--TBLOGRENCILER tablosunda yer alan �ehirlerden �zmir, Ankara veya Edirne olanlar� getiren sorgu (IN kullan�m�)
--SELECT * FROM TBLOGRENCILER WHERE OGRSEHIR='�zmir' OR OGRSEHIR='Ankara' OR OGRSEHIR='Edirne' (IN KULLANMADAN)
--SELECT * FROM TBLOGRENCILER WHERE OGRSEHIR IN('�zmir','Ankara','Edirne')

--TBLNOTLAR tablosunda yer alan SINAV1 de�erlerden 70,75,80,85,90 de�erlerini getiren sorgu
--SELECT * FROM TBLNOTLAR WHERE SINAV1 IN(70,75,80,85,90)

--TBLNOTLAR tablosunda yer alan SINAV1 de�erlerden 70,75,80,85,90 de�erlerini getirmeyen sorgu
--SELECT * FROM TBLNOTLAR WHERE SINAV1 NOT IN(70,75,80,85,90)