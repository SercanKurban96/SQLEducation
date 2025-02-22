--DATENAME Kullanýmý

--Þu anki ay deðerini gösteren sorgu
--SELECT DATENAME(MONTH,getdate())

--Þu anki ay deðerini gösteren ve girilen tarihe göre ay deðerini gösteren sorgu
--SELECT DATENAME(MONTH,getdate()),datename(MONTH,'2025.01.15')

--Þu anki haftayý gösteren sorgu
--SELECT DATENAME(WEEKDAY,GETDATE())

--Girilen tarihe göre haftayý gösteren sorgu
--SELECT DATENAME(WEEKDAY,'2025.06.10')