--T-SQL

--De�i�ken Kullan�m�

--int tan�mlama
--DECLARE @Sayi int
--set @Sayi=24
--SELECT @Sayi as 'Sonu�'

--varchar tan�mlama
--DECLARE @Kisi1 varchar(20)
--set @Kisi1='Sercan'
--SELECT @Kisi1

--iki tane say� de�i�keni ve toplam de�i�keni tan�mlama
--DECLARE @sayi1 int, @sayi2 int, @toplam int
--set @sayi1=20
--set @sayi2=30
--set @toplam=@sayi1+@sayi2
--select @toplam

--�dev: 3 tane s�nav notu girilen ��rencinin ortalamas�n� hesaplayan sorguyu yaz�n (ondal�kl� olarak).
DECLARE @sinav1 decimal(5, 2), @sinav2 decimal(5, 2), @sinav3 decimal(5, 2), @ortalama decimal(5, 2)
set @sinav1 = 75
set @sinav2 = 64
set @sinav3 = 81
set @ortalama = (@sinav1+@sinav2+@sinav3)/3
select @ortalama as 'Ortalama'