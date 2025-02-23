--TRANSACTION --> ROLLBACK COMMIT

--BEGIN TRANSACTION
--INSERT INTO TBLKATEGORI (AD) VALUES ('TV')
--INSERT INTO TBLKATEGORI (AD) VALUES ('HALI')
--SELECT * FROM TBLKATEGORI
--ROLLBACK

--Ödev: Bir önceki örnekte 2 tane veri eklemiþtik, 3 tane kategori örneði vardý, 
--çalýþtýrdýðýmýz zaman verileri baþarýlý bir þekilde ekledi ve ID deðerleri 4 ve 5 oldu
--ancak ROLLBACK iþlemiyle bu kayýtlar etkilenmedi. Þimdi TBLKATEGORI tablosuna veri eklediðimiz zaman ID deðeri 4'ten mi yoksa 6'dan mý baþlayacaktýr?

--Cevap: 6'dan baþlayacaktýr.