--��renciler ile TBLNOTLAR tablosunda olan b�t�n kay�tlar� getiren ancak birle�tirme i�lemini TBLNOTLAR tablosuna g�re yapan sorgu
SELECT * FROM TBLNOTLAR
LEFT JOIN TBLOGRENCILER
ON TBLOGRENCILER.OGRID = TBLNOTLAR.OGRENCI

--��renciler ile TBLNOTLAR tablosunda olan b�t�n kay�tlar� getiren ancak birle�tirme i�lemini TBLOGRENCILER tablosuna g�re yapan sorgu
SELECT * FROM TBLNOTLAR
RIGHT JOIN TBLOGRENCILER
ON TBLOGRENCILER.OGRID = TBLNOTLAR.OGRENCI