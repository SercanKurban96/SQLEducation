--TBLOGRENCILER tablosunda yer alan �ehirler i�erisinde ir kelimesinden sonra (ir sonda olmayacak) harfleri g�stermeye devam eden sorgu
--SELECT * FROM TBLOGRENCILER WHERE OGRSEHIR LIKE '%ir_%'

--TBLOGRENCILER tablosunda yer alan �ehirler i�erisinde an kelimesinden sonra (an sonda olmayacak) harfleri g�stermeye devam eden sorgu
--SELECT * FROM TBLOGRENCILER WHERE OGRSEHIR LIKE '%an_%'

--TBLOGRENCILER tablosunda ismi A veya B ile ba�layan sorgu
--SELECT * FROM TBLOGRENCILER WHERE OGRAD LIKE '[A,B]%'

--TBLOGRENCILER tablosunda ismi A veya B i�inde ge�en sorgu
--SELECT * FROM TBLOGRENCILER WHERE OGRAD LIKE '%[A,B]%'

--TBLOGRENCILER tablosunda ismi N veya I ile biten sorgu
--SELECT * FROM TBLOGRENCILER WHERE OGRAD LIKE '%[N,I]'

--TBLOGRENCILER tablosunda A'dan ba�layarak M'ye kadar kul�pleri getiren sorgu
--SELECT * FROM TBLOGRENCILER WHERE OGRKULUP LIKE '[a-m]%'