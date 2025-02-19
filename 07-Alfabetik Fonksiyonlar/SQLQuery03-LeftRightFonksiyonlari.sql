--LEFT RIGHT

--SELECT LEFT('MERHABA DÜNYA',9), RIGHT('MERHABA ÝSTANBUL',2)

--TBLOGRENCILER tablosunda yer alan ismin baþ harfini LEFT fonksiyonu ve yanýna nokta olarak gösteren ve soyadýn tamamýný gösteren sorgu
--SELECT LEFT(OGRAD,1) + '.' + OGRSOYAD AS 'AD SOYAD' FROM TBLOGRENCILER

--TBLDERSLER tablosunda yer alan derslerin ilk 3 hafrini ve TBLNOTLAR tablosunda yer alan ortalamayý gösteren sorgu
--SELECT LEFT(DERSAD,3),AVG(ORTALAMA) FROM TBLNOTLAR 
--INNER JOIN TBLDERSLER ON TBLDERSLER.DERSID = TBLNOTLAR.DERS
--GROUP BY DERSAD

--Ödev: Bir önceki örnekte yer alan ondalýklý ifadenin sadece ilk ikisini gösteren sorgu (Örnek: 61.500000 deðeri 61.50 þeklinde gözükecek)
SELECT LEFT(DERSAD,3),CAST(AVG(ORTALAMA) AS DECIMAL(5,2)) FROM TBLNOTLAR 
INNER JOIN TBLDERSLER ON TBLDERSLER.DERSID = TBLNOTLAR.DERS
GROUP BY DERSAD