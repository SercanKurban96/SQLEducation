--DATEADD Kullan�m�

--�u anki tarihe 3 y�l ekleyen sorgu
SELECT DATEADD(YEAR,3,'2025-02.22')

--�u anki tarihe 45 g�n ekleyen sorgu
SELECT DATEADD(DAY,45,GETDATE())

--�u anki tarihe 350 ay ekleyen sorgu
SELECT DATEADD(MONTH,350,GETDATE())