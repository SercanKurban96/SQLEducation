--T-SQL WAITFOR KULLANIMI

--7 saniye sonra TBLURUNLER tablosunu g�steren sorgu
--WAITFOR DELAY '00:00:07'
--SELECT * FROM TBLURUNLER

WAITFOR DELAY '00:00:05'
INSERT INTO TBLKATEGORI (KATEGORIAD) VALUES ('D��ER')
SELECT * FROM TBLKATEGORI