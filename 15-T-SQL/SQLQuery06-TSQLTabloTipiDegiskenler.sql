--T-SQL Tablo Tipi Deðiþkenler

DECLARE @Kisiler table
(
KisiID int identity(1,1),
KisiAd varchar(50),
KisiSehir varchar(15)
)
INSERT INTO @Kisiler (KisiAd,KisiSehir) VALUES ('Ali','Malatya')
INSERT INTO @Kisiler (KisiAd,KisiSehir) VALUES ('Emel','Trabzon')
SELECT * FROM @Kisiler WHERE KisiSehir LIKE '%r%'