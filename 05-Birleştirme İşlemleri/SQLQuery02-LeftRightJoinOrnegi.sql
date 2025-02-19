--Öðrenciler ile TBLNOTLAR tablosunda olan bütün kayýtlarý getiren ancak birleþtirme iþlemini TBLNOTLAR tablosuna göre yapan sorgu
SELECT * FROM TBLNOTLAR
LEFT JOIN TBLOGRENCILER
ON TBLOGRENCILER.OGRID = TBLNOTLAR.OGRENCI

--Öðrenciler ile TBLNOTLAR tablosunda olan bütün kayýtlarý getiren ancak birleþtirme iþlemini TBLOGRENCILER tablosuna göre yapan sorgu
SELECT * FROM TBLNOTLAR
RIGHT JOIN TBLOGRENCILER
ON TBLOGRENCILER.OGRID = TBLNOTLAR.OGRENCI