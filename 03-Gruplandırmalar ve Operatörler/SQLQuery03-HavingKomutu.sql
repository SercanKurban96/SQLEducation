--TBLOGRENCILER tablosunda sadece 2 tane ��rencinin bulundu�u �ehirleri getiren sorgu
--SELECT OGRSEHIR, COUNT(*) AS 'SAYI' FROM TBLOGRENCILER GROUP BY OGRSEHIR HAVING COUNT(*)=2

--TBLOGRENCILER tablosunda sadece Kitapl�k kulub�nde yer alan ka� ��rencinin oldu�unu getiren sorgu
--SELECT OGRKULUP,COUNT(*) FROM TBLOGRENCILER GROUP BY OGRKULUP HAVING OGRKULUP='Kitapl�k'

--�dev: Ge�en ��renci ve ge�emeyen ��renci say�s�n� tablolar�n ismiyle (�rne�in: as 'ge�en ��renci') beraber yazan sorgu
--SELECT DURUM, COUNT(*) AS 'KALDI' FROM TBLNOTLAR GROUP BY DURUM HAVING DURUM=0
--SELECT DURUM, COUNT(*) AS 'GE�T�' FROM TBLNOTLAR GROUP BY DURUM HAVING DURUM=1