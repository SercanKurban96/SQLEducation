--LEN

--SELECT LEN('MERHABA')

--TBLOGRENCILER tablosunda yer alan öðrencilerin þehri Adana olanlarýn adlarýný ve kaç karakterden oluþtuðunu gösteren sorgu
--SELECT OGRAD,LEN(OGRAD) FROM TBLOGRENCILER WHERE OGRSEHIR='Adana'

--TBLOGRENCILER tablosunda yer alan öðrencilerin þehri Adana olanlarýn içerisinde Biliþim kulübündeki ALT SORGU halinde öðrencilerin adlarýný ve kaç karakterden 
--oluþtuðunu gösteren sorgu
--SELECT OGRAD,LEN(OGRAD),OGRKULUP FROM TBLOGRENCILER 
--WHERE OGRSEHIR='Adana' AND OGRKULUP = (SELECT KULUPID FROM TBLKULUPLER WHERE KULUPAD = 'Biliþim')

--TBLOGRENCILER tablosunda yer alan öðrencilerin adlarý 3 veya 4 karakter olanlarý gösteren sorgu
--SELECT * FROM TBLOGRENCILER WHERE LEN(OGRAD)=4 OR LEN(OGRAD)=3

--Ödev: Ýsim ve soyisim karakterlerin toplamý 3 ile 7 karakter arasýnda olan öðrencileri getiren sorgu
--1. Çözüm:
--SELECT * FROM TBLOGRENCILER WHERE LEN(OGRAD) + LEN(OGRSOYAD) >= 3 AND LEN(OGRAD) + LEN(OGRSOYAD) <= 7
--2. Çözüm:
SELECT * FROM TBLOGRENCILER WHERE LEN(OGRAD) + LEN(OGRSOYAD) IN(3,7)
