--TBLOGRENCILER tablosunda sadece 2 tane öðrencinin bulunduðu þehirleri getiren sorgu
--SELECT OGRSEHIR, COUNT(*) AS 'SAYI' FROM TBLOGRENCILER GROUP BY OGRSEHIR HAVING COUNT(*)=2

--TBLOGRENCILER tablosunda sadece Kitaplýk kulubünde yer alan kaç öðrencinin olduðunu getiren sorgu
--SELECT OGRKULUP,COUNT(*) FROM TBLOGRENCILER GROUP BY OGRKULUP HAVING OGRKULUP='Kitaplýk'

--Ödev: Geçen öðrenci ve geçemeyen öðrenci sayýsýný tablolarýn ismiyle (örneðin: as 'geçen öðrenci') beraber yazan sorgu
--SELECT DURUM, COUNT(*) AS 'KALDI' FROM TBLNOTLAR GROUP BY DURUM HAVING DURUM=0
--SELECT DURUM, COUNT(*) AS 'GEÇTÝ' FROM TBLNOTLAR GROUP BY DURUM HAVING DURUM=1