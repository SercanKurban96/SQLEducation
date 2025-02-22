--DATEPART Örnekleri
--Tarih aralýðýnda GÜN 1 ve 3 olanlarý gösteren sorgu
--SELECT * FROM TBLHAREKET WHERE DATEPART(DAY,TARIH) BETWEEN 1 AND 3

--Tarih aralýðýnda GÜN 1 ve 3 olanlarý gösteren ve müþteri ID'si 1 olan sorgu
--SELECT * FROM TBLHAREKET WHERE DATEPART(DAY,TARIH) BETWEEN 1 AND 3 AND MUSTERI=1

--Tarih aralýðýnda GÜN 1 ve 3 olan ve müþterinin þehri Ankara olan sorgu
--SELECT * FROM TBLHAREKET WHERE DATEPART(DAY, TARIH) BETWEEN 1 AND 3
--AND MUSTERI = (SELECT MUSTERIID FROM TBLMUSTERI WHERE MUSTERISEHIR='ANKARA')