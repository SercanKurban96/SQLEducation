--LTRIM RTRIM REPLACE

--Sol taraftaki bo�lu�u kald�ran komut
--SELECT LTRIM('			Korkma S�nmez Bu �afaklarda Y�zen Al Sancak			')

--Sa� taraftaki bo�lu�u kald�ran komut
--SELECT RTRIM('			Korkma S�nmez Bu �afaklarda Y�zen Al Sancak			')

--1. Parametre Ana Kelime, C�mle
--2. Parametre Bulunacak De�er
--3. Parametre Yeni De�er
--SELECT REPLACE('Sercan Kurban','Kurban','K.Ban')
--SELECT REPLACE('Merhaba bug�n hava so�uk','hava','d��ar�s�')
--SELECT REPLACE('Merhaba bug�n hava so�uk','a','e')

--�dev: Tek bir c�mle i�inde birden fazla de�eri de�i�tirmek i�in gerekli sorguyu yaz�n�z.
--SELECT REPLACE(REPLACE('Sercan Kurban','a','e'),'u','�')