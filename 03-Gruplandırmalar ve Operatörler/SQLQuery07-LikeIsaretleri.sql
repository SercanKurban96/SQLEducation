--TBLOGRENCILER tablosunda yer alan þehirler içerisinde ir kelimesinden sonra (ir sonda olmayacak) harfleri göstermeye devam eden sorgu
--SELECT * FROM TBLOGRENCILER WHERE OGRSEHIR LIKE '%ir_%'

--TBLOGRENCILER tablosunda yer alan þehirler içerisinde an kelimesinden sonra (an sonda olmayacak) harfleri göstermeye devam eden sorgu
--SELECT * FROM TBLOGRENCILER WHERE OGRSEHIR LIKE '%an_%'

--TBLOGRENCILER tablosunda ismi A veya B ile baþlayan sorgu
--SELECT * FROM TBLOGRENCILER WHERE OGRAD LIKE '[A,B]%'

--TBLOGRENCILER tablosunda ismi A veya B içinde geçen sorgu
--SELECT * FROM TBLOGRENCILER WHERE OGRAD LIKE '%[A,B]%'

--TBLOGRENCILER tablosunda ismi N veya I ile biten sorgu
--SELECT * FROM TBLOGRENCILER WHERE OGRAD LIKE '%[N,I]'

--TBLOGRENCILER tablosunda A'dan baþlayarak M'ye kadar kulüpleri getiren sorgu
--SELECT * FROM TBLOGRENCILER WHERE OGRKULUP LIKE '[a-m]%'