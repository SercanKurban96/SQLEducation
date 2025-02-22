--DATEADD Kullanýmý

--Þu anki tarihe 3 yýl ekleyen sorgu
SELECT DATEADD(YEAR,3,'2025-02.22')

--Þu anki tarihe 45 gün ekleyen sorgu
SELECT DATEADD(DAY,45,GETDATE())

--Þu anki tarihe 350 ay ekleyen sorgu
SELECT DATEADD(MONTH,350,GETDATE())