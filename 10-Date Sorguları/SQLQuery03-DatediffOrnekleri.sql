--DATEDIFF Kullan�m�

--�u anki ile 2022.10.25 tarihin aras�ndaki y�l fark�n� g�steren sorgu
--SELECT DATEDIFF(YEAR,'2022.10.25',GETDATE())

--Girilen tarihlere g�re ay fark�n� g�steren sorgu
--SELECT DATEDIFF(MONTH,'2023.12.15','2025.01.15')

--Hareket tablosunda 1 numaral� hareketin ne zaman yap�ld���n� bug�ne kadar ka� g�n ge�ti�ini g�steren sorgu
--SELECT DATEDIFF(DAY,TARIH,GETDATE()) FROM TBLHAREKET WHERE HAREKETID=1