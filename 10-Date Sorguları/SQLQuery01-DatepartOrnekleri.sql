--DATEPART �rnekleri
--Tarih aral���nda G�N 1 ve 3 olanlar� g�steren sorgu
--SELECT * FROM TBLHAREKET WHERE DATEPART(DAY,TARIH) BETWEEN 1 AND 3

--Tarih aral���nda G�N 1 ve 3 olanlar� g�steren ve m��teri ID'si 1 olan sorgu
--SELECT * FROM TBLHAREKET WHERE DATEPART(DAY,TARIH) BETWEEN 1 AND 3 AND MUSTERI=1

--Tarih aral���nda G�N 1 ve 3 olan ve m��terinin �ehri Ankara olan sorgu
--SELECT * FROM TBLHAREKET WHERE DATEPART(DAY, TARIH) BETWEEN 1 AND 3
--AND MUSTERI = (SELECT MUSTERIID FROM TBLMUSTERI WHERE MUSTERISEHIR='ANKARA')