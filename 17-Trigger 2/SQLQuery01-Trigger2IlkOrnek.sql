--TRIGGER (Devam)

--Yeni veri tabaný oluþturma
--CREATE DATABASE DbYeni

--Yeni veri tabanýný kullanma
--USE DbYeni

--Tablolar Oluþturma
--CREATE TABLE TBLMUSTERI
--(
--ID INT PRIMARY KEY IDENTITY(1,1),
--AD VARCHAR(20),
--SOYAD VARCHAR(20),
--SEHIR VARCHAR(15),
--BAKIYE DECIMAL(18,2)
--)

--CREATE TABLE TBLKATEGORI
--(
--KATEGORIID INT PRIMARY KEY IDENTITY(1,1),
--AD VARCHAR(20)
--)

--CREATE TABLE TBLURUN
--(
--URUNID INT PRIMARY KEY IDENTITY(1,1),
--AD VARCHAR(20),
--ALISFIYAT DECIMAL(18,2),
--SATISFIYAT DECIMAL(18,2),
--STOK SMALLINT,
--DURUM BIT,
--KATEGORI INT
--)

--CREATE TABLE TBLSATIS
--(
--SATISID INT PRIMARY KEY IDENTITY(1,1),
--MUSTERI INT,
--URUN INT,
--TARIH DATE
--)

--CREATE TABLE TBLSTOK
--(
--TOPLAMURUN INT
--)

--TBLURUN tablosunda yer alan kayýtlarý TBLSTOK tablosuna aktarma
--UPDATE TBLSTOK SET TOPLAMURUN = (SELECT COUNT(*) FROM TBLURUN)

--Tetikleyici Oluþturma: TBLURUN tablosuna her bir veri eklediðim zaman TBLSTOK deðerini bir arttýran sorgu
--CREATE TRIGGER ARTTIR
--ON TBLURUN
--AFTER INSERT
--AS
--UPDATE TBLSTOK SET TOPLAMURUN+=1

--TBLURUN tablosunda yer alan STOK sütununa ait toplamýný TBLSTOK tablosundaki TOPLAMURUN sütununda güncelleyen sorgu (Ýstenilen çözüm bu deðil)
--UPDATE TBLSTOK SET TOPLAMURUN = (SELECT SUM(STOK) FROM TBLURUN)

--Trigger silme
--DROP TRIGGER ARTTIR