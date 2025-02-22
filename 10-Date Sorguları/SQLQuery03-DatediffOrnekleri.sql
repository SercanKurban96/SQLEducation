--DATEDIFF Kullanýmý

--Þu anki ile 2022.10.25 tarihin arasýndaki yýl farkýný gösteren sorgu
--SELECT DATEDIFF(YEAR,'2022.10.25',GETDATE())

--Girilen tarihlere göre ay farkýný gösteren sorgu
--SELECT DATEDIFF(MONTH,'2023.12.15','2025.01.15')

--Hareket tablosunda 1 numaralý hareketin ne zaman yapýldýðýný bugüne kadar kaç gün geçtiðini gösteren sorgu
--SELECT DATEDIFF(DAY,TARIH,GETDATE()) FROM TBLHAREKET WHERE HAREKETID=1