--T-SQL WHILE D�ng�s�

--1'den ba�lay�p 5'e kadar olan ''Merhaba SQL Dersleri' metnini WHILE d�ng�s�yle yazd�ran sorgu
--DECLARE @sayac int
--set @sayac=1
--while @sayac<=5
--begin
--print 'Merhaba SQL Dersleri'
--set @sayac = @sayac + 1
--end

--1'den ba�lay�p 10'a kadar olan say�lar� WHILE d�ng�s�yle yazd�ran sorgu
--DECLARE @i int
--set @i=1
--while @i<=10
--begin
--print @i
--set @i+=1
--end

--1'den 10'a kadar olan say�lar�n toplam�n� WHILE d�ng�s�yle yazd�ran sorgu
--DECLARE @toplam int, @sayac int
--set @sayac=1
--set @toplam=0
--while(@sayac<=10)
--begin
--set @toplam=@toplam+@sayac
--set @sayac+=1
--end
--print '1 ile 10 Aras�ndaki Say�lar�n Toplam�'
--print '*************************************'
--print @toplam


--WHILE(SELECT AVG(URUNSATISFIYAT-URUNALISFIYAT) FROM TBLURUNLER WHERE KATEGORI=2)<=450
--BEGIN
--UPDATE TBLURUNLER SET URUNSATISFIYAT+=URUNSATISFIYAT*10/100
--END
--SELECT * FROM TBLURUNLER

--�dev: Toplam �r�n say�s� (URUNSTOK) 200'� ge�ene kadar �r�n stokta her bir �r�ne birer tane �r�n ekleyen sorguyu yaz�n.
WHILE (SELECT SUM(URUNSTOK) FROM TBLURUNLER)<=200
BEGIN
UPDATE TBLURUNLER SET URUNSTOK+=1
END
SELECT * FROM TBLURUNLER