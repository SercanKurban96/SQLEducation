--TBLOGRENCILER tablosunda Adana �ehrinde ve Kitapl�k kul�b�nde olan verileri listeleme
--SELECT * FROM TBLOGRENCILER WHERE OGRSEHIR='Adana' AND OGRKULUP='Kitapl�k'

--TBLOGRENCILER tablosunda Adana �ehrinde veya Satran� kul�b�nde olan verileri listeleme
--SELECT * FROM TBLOGRENCILER WHERE OGRSEHIR='Adana' OR OGRKULUP='Satran�'

--Decimal(x,y)
--x: Virg�lden �nce Basamak Say�s�
--y: Virg�lden Sonra Basamak Say�s�
--Ortalama: 78,65 ** 100,00
--Decimal(4,2)

--TBLNOTLAR tablosundaki t�m verileri listeleme
--SELECT * FROM TBLNOTLAR

--TBLNOTLAR tablosundaki SINAV1,SINAV2 ve SINAV3 de�erlerini toplay�p 3'e b�lme
--SELECT (SINAV1+SINAV2+SINAV3)/3 FROM TBLNOTLAR