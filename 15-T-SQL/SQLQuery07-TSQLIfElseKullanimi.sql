--T-SQL IF ELSE KULLANIMI

--if(10<5)
--print 'Merhaba'
--else
--print 'Selam'

--SELECT * FROM TBLURUNLER

--if(SELECT Sum(URUNSTOK) FROM TBLURUNLER) > 100
--print 'Toplam �r�n Say�s� 100 den B�y�k'
--else
--print 'Toplam �r�n Say�s� 100 den K���k'

if(SELECT COUNT(*) FROM TBLURUNLER) > 20
print '20 den fazla �e�it �r�n var'
else
print '20 den az �e�it �r�n var'