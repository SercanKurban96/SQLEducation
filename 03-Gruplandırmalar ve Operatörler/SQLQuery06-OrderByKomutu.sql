--TBLOGRENCILER tablosunda ��rencilerin ad�n� alfabetik s�raya g�re A-Z g�steren sorgu
--SELECT * FROM TBLOGRENCILER ORDER BY OGRAD ASC

--TBLOGRENCILER tablosunda ��rencilerin ad�n� alfabetik s�raya g�re Z-A g�steren sorgu
--SELECT * FROM TBLOGRENCILER ORDER BY OGRAD DESC

--TBLOGRENCILER tablosunda ��rencileri cinsiyet s�ras�na g�re A-Z g�steren sorgu
--SELECT * FROM TBLOGRENCILER ORDER BY OGRCINSIYET

--TBLOGRENCILER tablosunda ��rencileri �ehir s�ras�na g�re A-Z g�steren sorgu
--SELECT * FROM TBLOGRENCILER ORDER BY OGRSEHIR

--TBLOGRENCILER tablosunda farkl� kul�pler �zerinden alfabetik s�ras�na g�re Z-A g�steren sorgu
--SELECT DISTINCT OGRKULUP FROM TBLOGRENCILER ORDER BY OGRKULUP DESC