--CHARINDEX ve REVERSE

--1. Karakter De�eri
--2. Girilen Karakter De�erinin Ka��nc� S�rada Oldu�unu Bulan De�er
--3. Ka��nc� Karakterden �tibaren Ba�la
--SELECT CHARINDEX('a','SQL Derslerine Devam Ediyoruz')
--SELECT CHARINDEX('e','SQL Derslerine Devam Ediyoruz', 20)
--SELECT LEN('SQL Derslerine Devam Ediyoruz')

--TBLOGRENCILER tablosunda yer alan OGRAD de�erlerinin a harfi olanlar�n ka��nc� s�rada oldu�unu g�steren sorgu
--SELECT CHARINDEX('a',OGRAD) FROM TBLOGRENCILER

--Karakteri tersten yazd�rma komutu
--SELECT REVERSE('Sercan')

--TBLDERSLER tablosunda yer alan ders ad�n� tersten yazd�ran sorgu
--SELECT REVERSE(DERSAD) FROM TBLDERSLER