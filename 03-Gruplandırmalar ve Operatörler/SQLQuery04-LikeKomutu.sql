--TBLOGRENCILER tablosunda ��rencilerin ad�n�n i�erisinde A harfi olanlar� getiren sorgu
--SELECT * FROM TBLOGRENCILER WHERE OGRAD LIKE '%a%'

--TBLOGRENCILER tablosunda ��rencilerin ad�n�n veya soyad�n�n i�erisinde A harfi olanlar� getiren sorgu
--SELECT * FROM TBLOGRENCILER WHERE OGRAD LIKE '%a%' OR OGRSOYAD LIKE '%a%'

--TBLOGRENCILER tablosunda ��rencilerin ad� A harfiyle ba�layanlar� getiren sorgu
--SELECT * FROM TBLOGRENCILER WHERE OGRAD LIKE 'a%'

--TBLOGRENCILER tablosunda ��rencilerin ad� A harfiyle ba�layanlar� ve cinsiyeti Erkek olarak getiren sorgu
--SELECT * FROM TBLOGRENCILER WHERE OGRAD LIKE 'a%' AND OGRCINSIYET='Erkek'

--TBLOGRENCILER tablosunda ��rencilerin ad� A harfiyle ba�layanlar� ve cinsiyeti K�z olarak getiren sorgu
--SELECT * FROM TBLOGRENCILER WHERE OGRAD LIKE 'a%' AND OGRCINSIYET='K�z'

--TBLOGRENCILER tablosunda �ehirlerin i�erisinde ir ge�enleri getiren sorgu
--SELECT * FROM TBLOGRENCILER WHERE OGRSEHIR LIKE '%ir%'

--TBLOGRENCILER tablosunda kul�plerin i�erisinde i harfi getirmeyen sorgu
--SELECT * FROM TBLOGRENCILER WHERE OGRKULUP NOT LIKE '%i%'