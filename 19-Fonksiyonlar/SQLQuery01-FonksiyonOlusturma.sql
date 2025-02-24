--FONKS�YONLAR

--DbYeni --> Programmability --> Functions --> System Functions --> Aggregate Functions
--SELECT COUNT(*) FROM TBLURUN

--DbYeni --> Programmability --> Functions --> System Functions --> Mathematical Functions
--SELECT SQRT(STOK) FROM TBLURUN

--DbYeni --> Programmability --> Functions --> System Functions --> String Functions
--SELECT LEN(AD), AD FROM TBLURUN

--Fonksiyon Olu�turma: Mevcut stoklar�n �zerine �rne�in 26 stok daha ekleyen sorgu.
--CREATE FUNCTION STOKARTTIR(@ADET INT)
--RETURNS INT
--AS
--BEGIN
--RETURN @ADET+26
--END

--Fonksiyonu �a��rabilmek i�in ba��na DBO yaz�lmal�d�r.
--SELECT AD, STOK, DBO.STOKARTTIR(STOK) FROM TBLURUN

--�dev: Stoklarla her bir sto�a bir fonksiyon olu�turulacak. Bu fonksiyon sto�un karek�k�n� alacak, alm�� oldu�u bu karek�k�n� 3 ile �arpacak.
--CREATE FUNCTION KAREKOKALVE3ILECARP(@ADET INT)
--RETURNS INT
--AS
--BEGIN
--RETURN SQRT(@ADET)*3
--END

--SELECT AD, STOK, DBO.KAREKOKALVE3ILECARP(STOK) FROM TBLURUN