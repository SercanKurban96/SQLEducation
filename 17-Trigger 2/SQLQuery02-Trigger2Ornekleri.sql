--TRIGGER 2 DEVAM

--TBLURUN tablosunda yer alan STOK sayýlarýnýn toplamýný Trigger üzerinde yapan sorgu
--CREATE TRIGGER ARTTIR
--ON TBLURUN
--AFTER INSERT
--AS
--DECLARE @STOKSAYI INT
--SELECT @STOKSAYI=STOK FROM inserted
--UPDATE TBLSTOK SET TOPLAMURUN+=@STOKSAYI

--Trigger azaltma
--CREATE TRIGGER AZALT
--ON TBLURUN
--AFTER DELETE
--AS
--DECLARE @STOKSAYI INT
--SELECT @STOKSAYI=STOK FROM deleted
--UPDATE TBLSTOK SET TOPLAMURUN-=@STOKSAYI

--INSERT INTO TBLURUN (AD,STOK) VALUES ('MIXER',80)

--Ödev: Ürün tablosunun aynýsýný bir daha oluþturun. Ürünün adý, stok sayýsý, alýþ ve satýþ fiyatlarý olsun. Ürün tablosundan bir ürün sildiðimiz an
-- o ürün yeni oluþturduðunuz tabloya kaydolsun, ayný zamanda TBLURUN tablosundan da silinsin.

--CREATE TABLE TBLURUN2
--(
--URUNID INT PRIMARY KEY IDENTITY(1,1),
--URUNAD varchar(50),
--STOK int,
--ALISFIYAT decimal(18,2),
--SATISFIYAT decimal(18,2)
--)

--CREATE TRIGGER TBLURUNSIL
--ON TBLURUN
--AFTER DELETE
--AS
--DECLARE @silinenURUNAD varchar(20), @silinenSTOK int, @silinenALISFIYAT decimal(18,2), @silinenSATISFIYAT decimal(18,2)
--SELECT @silinenURUNAD=AD, @silinenSTOK=STOK, @silinenALISFIYAT=ALISFIYAT, @silinenSATISFIYAT=SATISFIYAT FROM deleted
--INSERT INTO TBLURUN2 (URUNAD,STOK,ALISFIYAT,SATISFIYAT) VALUES (@silinenURUNAD,@silinenSTOK,@silinenALISFIYAT,@silinenSATISFIYAT)