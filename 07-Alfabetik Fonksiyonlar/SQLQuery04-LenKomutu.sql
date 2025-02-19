--LEN

--SELECT LEN('MERHABA')

--TBLOGRENCILER tablosunda yer alan ��rencilerin �ehri Adana olanlar�n adlar�n� ve ka� karakterden olu�tu�unu g�steren sorgu
--SELECT OGRAD,LEN(OGRAD) FROM TBLOGRENCILER WHERE OGRSEHIR='Adana'

--TBLOGRENCILER tablosunda yer alan ��rencilerin �ehri Adana olanlar�n i�erisinde Bili�im kul�b�ndeki ALT SORGU halinde ��rencilerin adlar�n� ve ka� karakterden 
--olu�tu�unu g�steren sorgu
--SELECT OGRAD,LEN(OGRAD),OGRKULUP FROM TBLOGRENCILER 
--WHERE OGRSEHIR='Adana' AND OGRKULUP = (SELECT KULUPID FROM TBLKULUPLER WHERE KULUPAD = 'Bili�im')

--TBLOGRENCILER tablosunda yer alan ��rencilerin adlar� 3 veya 4 karakter olanlar� g�steren sorgu
--SELECT * FROM TBLOGRENCILER WHERE LEN(OGRAD)=4 OR LEN(OGRAD)=3

--�dev: �sim ve soyisim karakterlerin toplam� 3 ile 7 karakter aras�nda olan ��rencileri getiren sorgu
--1. ��z�m:
--SELECT * FROM TBLOGRENCILER WHERE LEN(OGRAD) + LEN(OGRSOYAD) >= 3 AND LEN(OGRAD) + LEN(OGRSOYAD) <= 7
--2. ��z�m:
SELECT * FROM TBLOGRENCILER WHERE LEN(OGRAD) + LEN(OGRSOYAD) IN(3,7)
