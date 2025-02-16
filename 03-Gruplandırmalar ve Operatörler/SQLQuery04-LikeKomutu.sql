--TBLOGRENCILER tablosunda öðrencilerin adýnýn içerisinde A harfi olanlarý getiren sorgu
--SELECT * FROM TBLOGRENCILER WHERE OGRAD LIKE '%a%'

--TBLOGRENCILER tablosunda öðrencilerin adýnýn veya soyadýnýn içerisinde A harfi olanlarý getiren sorgu
--SELECT * FROM TBLOGRENCILER WHERE OGRAD LIKE '%a%' OR OGRSOYAD LIKE '%a%'

--TBLOGRENCILER tablosunda öðrencilerin adý A harfiyle baþlayanlarý getiren sorgu
--SELECT * FROM TBLOGRENCILER WHERE OGRAD LIKE 'a%'

--TBLOGRENCILER tablosunda öðrencilerin adý A harfiyle baþlayanlarý ve cinsiyeti Erkek olarak getiren sorgu
--SELECT * FROM TBLOGRENCILER WHERE OGRAD LIKE 'a%' AND OGRCINSIYET='Erkek'

--TBLOGRENCILER tablosunda öðrencilerin adý A harfiyle baþlayanlarý ve cinsiyeti Kýz olarak getiren sorgu
--SELECT * FROM TBLOGRENCILER WHERE OGRAD LIKE 'a%' AND OGRCINSIYET='Kýz'

--TBLOGRENCILER tablosunda þehirlerin içerisinde ir geçenleri getiren sorgu
--SELECT * FROM TBLOGRENCILER WHERE OGRSEHIR LIKE '%ir%'

--TBLOGRENCILER tablosunda kulüplerin içerisinde i harfi getirmeyen sorgu
--SELECT * FROM TBLOGRENCILER WHERE OGRKULUP NOT LIKE '%i%'