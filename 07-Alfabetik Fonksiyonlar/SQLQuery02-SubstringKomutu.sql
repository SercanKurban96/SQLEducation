--SUBSTRING

--TBLOGRENCILER tablosunda yer alan OGRAD s�tunundaki birinci harften ba�layarak 2 karakter alan sorgu
--SUBSTRING(S�TUN ADI, BA�LANGI� DE�ER�, KARAKTER UZUNLUK DE�ER�)
--SELECT SUBSTRING(OGRAD,1,2) FROM TBLOGRENCILER

--TBLOGRENCILER tablosunda yer alan ��renci ad�n�n ba� harfi ve noktayla beraber soyad�n�n tamam�n� g�steren sorgu
--SELECT SUBSTRING(OGRAD,1,1) + '.' + OGRSOYAD AS 'AD SOYAD' FROM TBLOGRENCILER

--�dev: TBLOGRENCILER tablosunda yer alan ��renci ad�n�n ba� harfi ve noktayla beraber soyad�n�n tamam�n� g�steren ve ��rencinin kulub�n�n ilk �� harfini
--getiren sorgu
SELECT SUBSTRING(OGRAD,1,1) + '.' + OGRSOYAD AS 'AD SOYAD',SUBSTRING(KULUPAD,1,3) FROM TBLOGRENCILER
INNER JOIN TBLKULUPLER ON TBLKULUPLER.KULUPID = TBLOGRENCILER.OGRKULUP
