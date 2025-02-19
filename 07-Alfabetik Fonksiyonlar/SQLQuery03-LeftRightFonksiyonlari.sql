--LEFT RIGHT

--SELECT LEFT('MERHABA D�NYA',9), RIGHT('MERHABA �STANBUL',2)

--TBLOGRENCILER tablosunda yer alan ismin ba� harfini LEFT fonksiyonu ve yan�na nokta olarak g�steren ve soyad�n tamam�n� g�steren sorgu
--SELECT LEFT(OGRAD,1) + '.' + OGRSOYAD AS 'AD SOYAD' FROM TBLOGRENCILER

--TBLDERSLER tablosunda yer alan derslerin ilk 3 hafrini ve TBLNOTLAR tablosunda yer alan ortalamay� g�steren sorgu
--SELECT LEFT(DERSAD,3),AVG(ORTALAMA) FROM TBLNOTLAR 
--INNER JOIN TBLDERSLER ON TBLDERSLER.DERSID = TBLNOTLAR.DERS
--GROUP BY DERSAD

--�dev: Bir �nceki �rnekte yer alan ondal�kl� ifadenin sadece ilk ikisini g�steren sorgu (�rnek: 61.500000 de�eri 61.50 �eklinde g�z�kecek)
SELECT LEFT(DERSAD,3),CAST(AVG(ORTALAMA) AS DECIMAL(5,2)) FROM TBLNOTLAR 
INNER JOIN TBLDERSLER ON TBLDERSLER.DERSID = TBLNOTLAR.DERS
GROUP BY DERSAD