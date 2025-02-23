--TRIGGER (Devam)

--Yeni veri taban� olu�turma
--CREATE DATABASE DbYeni

--Yeni veri taban�n� kullanma
--USE DbYeni

--Tablolar Olu�turma
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

--TBLURUN tablosunda yer alan kay�tlar� TBLSTOK tablosuna aktarma
--UPDATE TBLSTOK SET TOPLAMURUN = (SELECT COUNT(*) FROM TBLURUN)

--Tetikleyici Olu�turma: TBLURUN tablosuna her bir veri ekledi�im zaman TBLSTOK de�erini bir artt�ran sorgu
--CREATE TRIGGER ARTTIR
--ON TBLURUN
--AFTER INSERT
--AS
--UPDATE TBLSTOK SET TOPLAMURUN+=1

--TBLURUN tablosunda yer alan STOK s�tununa ait toplam�n� TBLSTOK tablosundaki TOPLAMURUN s�tununda g�ncelleyen sorgu (�stenilen ��z�m bu de�il)
--UPDATE TBLSTOK SET TOPLAMURUN = (SELECT SUM(STOK) FROM TBLURUN)

--Trigger silme
--DROP TRIGGER ARTTIR