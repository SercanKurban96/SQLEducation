--T-SQL Tablo ��i De�i�kenler

--SatisVT veri taban�n� �a��rma
--USE SatisVT
--SELECT * FROM TBLMUSTERI

--TBLMUSTERI tablosunda MUSTERIBAKIYE en fazla olan� de�i�ken ile tan�mlama
--Declare @Bakiye int
--set @Bakiye=(SELECT MAX(MUSTERIBAKIYE) FROM TBLMUSTERI)
--SELECT @Bakiye

--SELECT * FROM TBLURUNLER

--TBLURUNLER tablosunda URUNSTOK en fazla olan� de�i�ken ile tan�mlama
Declare @Stok int
SELECT @Stok=MAX(URUNSTOK) FROM TBLURUNLER
SELECT * FROM TBLURUNLER WHERE URUNSTOK=@Stok