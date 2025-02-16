--TBLOGRENCILER tablosunda þehir sayýsýna göre gruplandýrma yapan sorgu
--SELECT OGRSEHIR,COUNT(*) AS 'Toplam' FROM TBLOGRENCILER GROUP BY OGRSEHIR

--TBLOGRENCILER tablosunda cinsiyet sayýsýna göre gruplandýrma yapan sorgu
--SELECT OGRCINSIYET,COUNT(*) AS 'Toplam' FROM TBLOGRENCILER GROUP BY OGRCINSIYET

--Ödev: TBLNOTLAR tablosunda geçen öðrenci sayýsýný ve kalan öðrenci sayýsýný veren sorguyu yazýn.
--SELECT DURUM,COUNT(*) AS 'GEÇTÝ/KALDI' FROM TBLNOTLAR GROUP BY DURUM

--TBLOGRENCILER tablosunda kulüp sayýsýna göre gruplandýrma yapan sorgu
--SELECT OGRKULUP,COUNT(*) AS 'Toplam' FROM TBLOGRENCILER GROUP BY OGRKULUP