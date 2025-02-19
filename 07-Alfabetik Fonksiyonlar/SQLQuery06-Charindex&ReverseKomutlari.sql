--CHARINDEX ve REVERSE

--1. Karakter Deðeri
--2. Girilen Karakter Deðerinin Kaçýncý Sýrada Olduðunu Bulan Deðer
--3. Kaçýncý Karakterden Ýtibaren Baþla
--SELECT CHARINDEX('a','SQL Derslerine Devam Ediyoruz')
--SELECT CHARINDEX('e','SQL Derslerine Devam Ediyoruz', 20)
--SELECT LEN('SQL Derslerine Devam Ediyoruz')

--TBLOGRENCILER tablosunda yer alan OGRAD deðerlerinin a harfi olanlarýn kaçýncý sýrada olduðunu gösteren sorgu
--SELECT CHARINDEX('a',OGRAD) FROM TBLOGRENCILER

--Karakteri tersten yazdýrma komutu
--SELECT REVERSE('Sercan')

--TBLDERSLER tablosunda yer alan ders adýný tersten yazdýran sorgu
--SELECT REVERSE(DERSAD) FROM TBLDERSLER