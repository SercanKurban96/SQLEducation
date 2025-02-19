--LTRIM RTRIM REPLACE

--Sol taraftaki boþluðu kaldýran komut
--SELECT LTRIM('			Korkma Sönmez Bu Þafaklarda Yüzen Al Sancak			')

--Sað taraftaki boþluðu kaldýran komut
--SELECT RTRIM('			Korkma Sönmez Bu Þafaklarda Yüzen Al Sancak			')

--1. Parametre Ana Kelime, Cümle
--2. Parametre Bulunacak Deðer
--3. Parametre Yeni Deðer
--SELECT REPLACE('Sercan Kurban','Kurban','K.Ban')
--SELECT REPLACE('Merhaba bugün hava soðuk','hava','dýþarýsý')
--SELECT REPLACE('Merhaba bugün hava soðuk','a','e')

--Ödev: Tek bir cümle içinde birden fazla deðeri deðiþtirmek için gerekli sorguyu yazýnýz.
--SELECT REPLACE(REPLACE('Sercan Kurban','a','e'),'u','ü')