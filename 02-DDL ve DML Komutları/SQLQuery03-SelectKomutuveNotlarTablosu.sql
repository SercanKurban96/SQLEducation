--TBLOGRENCILER tablosunda Adana þehrinde ve Kitaplýk kulübünde olan verileri listeleme
--SELECT * FROM TBLOGRENCILER WHERE OGRSEHIR='Adana' AND OGRKULUP='Kitaplýk'

--TBLOGRENCILER tablosunda Adana þehrinde veya Satranç kulübünde olan verileri listeleme
--SELECT * FROM TBLOGRENCILER WHERE OGRSEHIR='Adana' OR OGRKULUP='Satranç'

--Decimal(x,y)
--x: Virgülden Önce Basamak Sayýsý
--y: Virgülden Sonra Basamak Sayýsý
--Ortalama: 78,65 ** 100,00
--Decimal(4,2)

--TBLNOTLAR tablosundaki tüm verileri listeleme
--SELECT * FROM TBLNOTLAR

--TBLNOTLAR tablosundaki SINAV1,SINAV2 ve SINAV3 deðerlerini toplayýp 3'e bölme
--SELECT (SINAV1+SINAV2+SINAV3)/3 FROM TBLNOTLAR