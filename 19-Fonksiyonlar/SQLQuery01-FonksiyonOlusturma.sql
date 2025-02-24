--FONKSÝYONLAR

--DbYeni --> Programmability --> Functions --> System Functions --> Aggregate Functions
--SELECT COUNT(*) FROM TBLURUN

--DbYeni --> Programmability --> Functions --> System Functions --> Mathematical Functions
--SELECT SQRT(STOK) FROM TBLURUN

--DbYeni --> Programmability --> Functions --> System Functions --> String Functions
--SELECT LEN(AD), AD FROM TBLURUN

--Fonksiyon Oluþturma: Mevcut stoklarýn üzerine örneðin 26 stok daha ekleyen sorgu.
--CREATE FUNCTION STOKARTTIR(@ADET INT)
--RETURNS INT
--AS
--BEGIN
--RETURN @ADET+26
--END

--Fonksiyonu çaðýrabilmek için baþýna DBO yazýlmalýdýr.
--SELECT AD, STOK, DBO.STOKARTTIR(STOK) FROM TBLURUN

--Ödev: Stoklarla her bir stoða bir fonksiyon oluþturulacak. Bu fonksiyon stoðun karekökünü alacak, almýþ olduðu bu karekökünü 3 ile çarpacak.
--CREATE FUNCTION KAREKOKALVE3ILECARP(@ADET INT)
--RETURNS INT
--AS
--BEGIN
--RETURN SQRT(@ADET)*3
--END

--SELECT AD, STOK, DBO.KAREKOKALVE3ILECARP(STOK) FROM TBLURUN