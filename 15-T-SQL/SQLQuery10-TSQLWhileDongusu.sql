--T-SQL WHILE Döngüsü

--1'den baþlayýp 5'e kadar olan ''Merhaba SQL Dersleri' metnini WHILE döngüsüyle yazdýran sorgu
--DECLARE @sayac int
--set @sayac=1
--while @sayac<=5
--begin
--print 'Merhaba SQL Dersleri'
--set @sayac = @sayac + 1
--end

--1'den baþlayýp 10'a kadar olan sayýlarý WHILE döngüsüyle yazdýran sorgu
--DECLARE @i int
--set @i=1
--while @i<=10
--begin
--print @i
--set @i+=1
--end

--1'den 10'a kadar olan sayýlarýn toplamýný WHILE döngüsüyle yazdýran sorgu
--DECLARE @toplam int, @sayac int
--set @sayac=1
--set @toplam=0
--while(@sayac<=10)
--begin
--set @toplam=@toplam+@sayac
--set @sayac+=1
--end
--print '1 ile 10 Arasýndaki Sayýlarýn Toplamý'
--print '*************************************'
--print @toplam


--WHILE(SELECT AVG(URUNSATISFIYAT-URUNALISFIYAT) FROM TBLURUNLER WHERE KATEGORI=2)<=450
--BEGIN
--UPDATE TBLURUNLER SET URUNSATISFIYAT+=URUNSATISFIYAT*10/100
--END
--SELECT * FROM TBLURUNLER

--Ödev: Toplam ürün sayýsý (URUNSTOK) 200'ü geçene kadar ürün stokta her bir ürüne birer tane ürün ekleyen sorguyu yazýn.
WHILE (SELECT SUM(URUNSTOK) FROM TBLURUNLER)<=200
BEGIN
UPDATE TBLURUNLER SET URUNSTOK+=1
END
SELECT * FROM TBLURUNLER