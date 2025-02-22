--Veri tabaný oluþturma
--CREATE DATABASE SatisVT

--Veri tabanýna eriþme
--USE SatisVT

--SatisVT Veri Tabaný Üzerinden Tablolar Oluþturma
--1. TABLO: TBLKATEGORI
--CREATE TABLE TBLKATEGORI
--(
--KATEGORIID tinyint identity(1,1) primary key,
--KATEGORIAD varchar(50)
--)

--2. TABLO: TBLURUNLER
--CREATE TABLE TBLURUNLER
--(
--URUNID int identity(1,1) primary key,
--URUNAD varchar(50),
--URUNMARKA varchar(50),
--KATEGORI tinyint,
--URUNALISFIYAT decimal(18,2),
--URUNSATISFIYAT decimal(18,2),
--URUNSTOK smallint check(URUNSTOK>0),
--URUNDURUM bit default '1'
--)

--3. TABLO: TBLPERSONEL
--CREATE TABLE TBLPERSONEL
--(
--PERSONELID smallint identity(1,1) primary key,
--PERSONELADSOYAD varchar(50)
--)

--4. TABLO: TBLMUSTERI
--CREATE TABLE TBLMUSTERI
--(
--MUSTERIID int identity(1,1) primary key,
--MUSTERIAD varchar(50),
--MUSTERISOYAD varchar(50),
--MUSTERISEHIR varchar(15),
--MUSTERIBAKIYE decimal(18,2)
--)

--5. TABLO: TBLHAREKET
--CREATE TABLE TBLHAREKET
--(
--HAREKETID int identity(1,1) primary key,
--URUN int,
--MUSTERI int,
--PERSONEL smallint,
--ADET int,
--TUTAR decimal(18,2),
--TARIH smalldatetime
--)