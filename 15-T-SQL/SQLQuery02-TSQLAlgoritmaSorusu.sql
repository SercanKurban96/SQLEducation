--T-SQL Örnek Algoritma Sorusu
--Sorgu kýsmýndan gönderilen 3 basamaklý sayýyý basamaklarýna ayýran ve daha sonra bu basamaklarý toplayan sorgu
DECLARE @sayi int, @birler int, @onlar int, @yuzler int, @toplam int
set @sayi=456
--Birler: 6		Onlar: 5	Yüzler: 4
set @yuzler = @sayi / 100
set @onlar = (@sayi / 10) % 10
set @birler = @sayi % 10
set @toplam = @birler + @onlar + @yuzler
SELECT @yuzler as 'Yüzler', @onlar as 'Onlar', @birler as 'Birler', @toplam as 'Sonuç'