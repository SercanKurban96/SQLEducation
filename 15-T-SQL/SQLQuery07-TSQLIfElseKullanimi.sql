--T-SQL IF ELSE KULLANIMI

--if(10<5)
--print 'Merhaba'
--else
--print 'Selam'

--SELECT * FROM TBLURUNLER

--if(SELECT Sum(URUNSTOK) FROM TBLURUNLER) > 100
--print 'Toplam Ürün Sayýsý 100 den Büyük'
--else
--print 'Toplam Ürün Sayýsý 100 den Küçük'

if(SELECT COUNT(*) FROM TBLURUNLER) > 20
print '20 den fazla çeþit ürün var'
else
print '20 den az çeþit ürün var'