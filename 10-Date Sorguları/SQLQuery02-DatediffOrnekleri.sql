--DATENAME Kullan�m�

--�u anki ay de�erini g�steren sorgu
--SELECT DATENAME(MONTH,getdate())

--�u anki ay de�erini g�steren ve girilen tarihe g�re ay de�erini g�steren sorgu
--SELECT DATENAME(MONTH,getdate()),datename(MONTH,'2025.01.15')

--�u anki haftay� g�steren sorgu
--SELECT DATENAME(WEEKDAY,GETDATE())

--Girilen tarihe g�re haftay� g�steren sorgu
--SELECT DATENAME(WEEKDAY,'2025.06.10')