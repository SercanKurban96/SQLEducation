--TBLOGRENCILER tablosunda yer alan toplam kay�t say�s�n� bulan sorgu
--SELECT COUNT(*) FROM TBLOGRENCILER

--TBLOGRENCILER tablosunda yer alan sadece Adana �ehrinde olan toplam kay�t say�s�n� bulan sorgu
--SELECT COUNT(*) FROM TBLOGRENCILER WHERE OGRSEHIR='Adana'

--TBLNOTLAR tablosunda SINAV1, SINAV2 ve SINAV3 s�tunlar�na ait olan t�m de�erlerin toplam�n� bulan sorgu
--SELECT SUM(SINAV1),SUM(SINAV2),SUM(SINAV3) FROM TBLNOTLAR

--TBLNOTLAR tablosunda SINAV1, SINAV2 ve SINAV3 s�tunlar�n�n ortalamas�n� bulan sorgu
--SELECT AVG(SINAV1),AVG(SINAV2),AVG(SINAV3) FROM TBLNOTLAR

--TBLNOTLAR tablosunda SINAV1, SINAV2 ve SINAV3 s�tunlar�n�n en y�ksek notunu bulduran sorgu
--SELECT MAX(SINAV1),MAX(SINAV2),MAX(SINAV3) FROM TBLNOTLAR

--TBLNOTLAR tablosunda SINAV1, SINAV2 ve SINAV3 s�tunlar�n�n en d���k notunu bulduran sorgu
--SELECT MIN(SINAV1),MIN(SINAV2),MIN(SINAV3) FROM TBLNOTLAR