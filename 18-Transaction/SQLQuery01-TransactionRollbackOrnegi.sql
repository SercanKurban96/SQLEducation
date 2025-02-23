--TRANSACTION --> ROLLBACK COMMIT

--BEGIN TRANSACTION
--INSERT INTO TBLKATEGORI (AD) VALUES ('TV')
--INSERT INTO TBLKATEGORI (AD) VALUES ('HALI')
--SELECT * FROM TBLKATEGORI
--ROLLBACK

--�dev: Bir �nceki �rnekte 2 tane veri eklemi�tik, 3 tane kategori �rne�i vard�, 
--�al��t�rd���m�z zaman verileri ba�ar�l� bir �ekilde ekledi ve ID de�erleri 4 ve 5 oldu
--ancak ROLLBACK i�lemiyle bu kay�tlar etkilenmedi. �imdi TBLKATEGORI tablosuna veri ekledi�imiz zaman ID de�eri 4'ten mi yoksa 6'dan m� ba�layacakt�r?

--Cevap: 6'dan ba�layacakt�r.