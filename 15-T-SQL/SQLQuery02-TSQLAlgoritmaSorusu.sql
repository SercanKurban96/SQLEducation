--T-SQL �rnek Algoritma Sorusu
--Sorgu k�sm�ndan g�nderilen 3 basamakl� say�y� basamaklar�na ay�ran ve daha sonra bu basamaklar� toplayan sorgu
DECLARE @sayi int, @birler int, @onlar int, @yuzler int, @toplam int
set @sayi=456
--Birler: 6		Onlar: 5	Y�zler: 4
set @yuzler = @sayi / 100
set @onlar = (@sayi / 10) % 10
set @birler = @sayi % 10
set @toplam = @birler + @onlar + @yuzler
SELECT @yuzler as 'Y�zler', @onlar as 'Onlar', @birler as 'Birler', @toplam as 'Sonu�'