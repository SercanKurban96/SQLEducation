--TBLOGRENCILER tablosunda yer alan þehirlerden Ýzmir, Ankara veya Edirne olanlarý getiren sorgu (IN kullanýmý)
--SELECT * FROM TBLOGRENCILER WHERE OGRSEHIR='Ýzmir' OR OGRSEHIR='Ankara' OR OGRSEHIR='Edirne' (IN KULLANMADAN)
--SELECT * FROM TBLOGRENCILER WHERE OGRSEHIR IN('Ýzmir','Ankara','Edirne')

--TBLNOTLAR tablosunda yer alan SINAV1 deðerlerden 70,75,80,85,90 deðerlerini getiren sorgu
--SELECT * FROM TBLNOTLAR WHERE SINAV1 IN(70,75,80,85,90)

--TBLNOTLAR tablosunda yer alan SINAV1 deðerlerden 70,75,80,85,90 deðerlerini getirmeyen sorgu
--SELECT * FROM TBLNOTLAR WHERE SINAV1 NOT IN(70,75,80,85,90)