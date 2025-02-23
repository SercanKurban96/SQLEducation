--T-SQL Tablo Ýçi Deðiþkenler

--SatisVT veri tabanýný çaðýrma
--USE SatisVT
--SELECT * FROM TBLMUSTERI

--TBLMUSTERI tablosunda MUSTERIBAKIYE en fazla olaný deðiþken ile tanýmlama
--Declare @Bakiye int
--set @Bakiye=(SELECT MAX(MUSTERIBAKIYE) FROM TBLMUSTERI)
--SELECT @Bakiye

--SELECT * FROM TBLURUNLER

--TBLURUNLER tablosunda URUNSTOK en fazla olaný deðiþken ile tanýmlama
Declare @Stok int
SELECT @Stok=MAX(URUNSTOK) FROM TBLURUNLER
SELECT * FROM TBLURUNLER WHERE URUNSTOK=@Stok