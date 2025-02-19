--SUBSTRING

--TBLOGRENCILER tablosunda yer alan OGRAD sütunundaki birinci harften baþlayarak 2 karakter alan sorgu
--SUBSTRING(SÜTUN ADI, BAÞLANGIÇ DEÐERÝ, KARAKTER UZUNLUK DEÐERÝ)
--SELECT SUBSTRING(OGRAD,1,2) FROM TBLOGRENCILER

--TBLOGRENCILER tablosunda yer alan öðrenci adýnýn baþ harfi ve noktayla beraber soyadýnýn tamamýný gösteren sorgu
--SELECT SUBSTRING(OGRAD,1,1) + '.' + OGRSOYAD AS 'AD SOYAD' FROM TBLOGRENCILER

--Ödev: TBLOGRENCILER tablosunda yer alan öðrenci adýnýn baþ harfi ve noktayla beraber soyadýnýn tamamýný gösteren ve öðrencinin kulubünün ilk üç harfini
--getiren sorgu
SELECT SUBSTRING(OGRAD,1,1) + '.' + OGRSOYAD AS 'AD SOYAD',SUBSTRING(KULUPAD,1,3) FROM TBLOGRENCILER
INNER JOIN TBLKULUPLER ON TBLKULUPLER.KULUPID = TBLOGRENCILER.OGRKULUP
