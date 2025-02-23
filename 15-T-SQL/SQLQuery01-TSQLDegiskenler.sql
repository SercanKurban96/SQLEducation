--T-SQL

--Deðiþken Kullanýmý

--int tanýmlama
--DECLARE @Sayi int
--set @Sayi=24
--SELECT @Sayi as 'Sonuç'

--varchar tanýmlama
--DECLARE @Kisi1 varchar(20)
--set @Kisi1='Sercan'
--SELECT @Kisi1

--iki tane sayý deðiþkeni ve toplam deðiþkeni tanýmlama
--DECLARE @sayi1 int, @sayi2 int, @toplam int
--set @sayi1=20
--set @sayi2=30
--set @toplam=@sayi1+@sayi2
--select @toplam

--Ödev: 3 tane sýnav notu girilen öðrencinin ortalamasýný hesaplayan sorguyu yazýn (ondalýklý olarak).
DECLARE @sinav1 decimal(5, 2), @sinav2 decimal(5, 2), @sinav3 decimal(5, 2), @ortalama decimal(5, 2)
set @sinav1 = 75
set @sinav2 = 64
set @sinav3 = 81
set @ortalama = (@sinav1+@sinav2+@sinav3)/3
select @ortalama as 'Ortalama'