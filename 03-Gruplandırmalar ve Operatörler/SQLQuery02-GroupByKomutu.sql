--TBLOGRENCILER tablosunda �ehir say�s�na g�re grupland�rma yapan sorgu
--SELECT OGRSEHIR,COUNT(*) AS 'Toplam' FROM TBLOGRENCILER GROUP BY OGRSEHIR

--TBLOGRENCILER tablosunda cinsiyet say�s�na g�re grupland�rma yapan sorgu
--SELECT OGRCINSIYET,COUNT(*) AS 'Toplam' FROM TBLOGRENCILER GROUP BY OGRCINSIYET

--�dev: TBLNOTLAR tablosunda ge�en ��renci say�s�n� ve kalan ��renci say�s�n� veren sorguyu yaz�n.
--SELECT DURUM,COUNT(*) AS 'GE�T�/KALDI' FROM TBLNOTLAR GROUP BY DURUM

--TBLOGRENCILER tablosunda kul�p say�s�na g�re grupland�rma yapan sorgu
--SELECT OGRKULUP,COUNT(*) AS 'Toplam' FROM TBLOGRENCILER GROUP BY OGRKULUP