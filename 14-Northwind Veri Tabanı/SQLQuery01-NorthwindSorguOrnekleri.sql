--NORTHWIND SORGU �RNEKLER�

--Products tablosunda yer alan verileri listeleyen sorgu
--SELECT * FROM Products

--Products tablosunda yer alan verilerin CategoryID de�eri 1 olanlar� listeleyen sorgu
--SELECT * FROM Products WHERE CategoryID=1

--Products tablosunda yer alan verilerin CategoryName de�eri 'SeaFood' olanlar� listeleyen sorgu
--SELECT * FROM Products WHERE CategoryID = (SELECT CategoryID FROM Categories WHERE CategoryName='SeaFood')

--Products tablosunda yer alan verilerin CategoryName de�eri 'SeaFood' olanlar� ve UnitsInStock de�eri 50'den b�y�k olanlar� listeleyen sorgu
--SELECT * FROM Products WHERE CategoryID = (SELECT CategoryID FROM Categories WHERE CategoryName='SeaFood') AND UnitsInStock > 50

--Products tablosunda yer alan verilerin CategoryName de�eri 'SeaFood' olanlar� ve UnitsInStock de�eri 20'den b�y�k olanlar� 
--ve �ehri Osaka olanlar� listeleyen sorgu
--SELECT * FROM Products WHERE CategoryID = (SELECT CategoryID FROM Categories WHERE CategoryName='SeaFood') 
--AND UnitsInStock > 20 AND SupplierID= (SELECT SupplierID FROM Suppliers WHERE City='Osaka')

--Orders tablosu i�erisinde �ehri Londra olan �al��anlar�n vermi� oldu�u sipari�leri ve ShipVia=3 olanlar� ve ShipCity='Oulu' olanlar� listeleyen sorgu
--SELECT * FROM Orders WHERE EmployeeID IN(SELECT EmployeeID FROM Employees WHERE City = 'London')
--AND ShipVia=3 AND ShipCity='Oulu'

--Prosed�r olarak Orders tablosu i�erisinde �ehri Londra olan �al��anlar�n vermi� oldu�u sipari�leri ve ShipVia=3 olanlar� 
--ve ShipCountry='France' olanlar� listeleyen sorgu
--CREATE PROCEDURE TEST1
--AS
--SELECT * FROM Orders WHERE EmployeeID IN(SELECT EmployeeID FROM Employees WHERE City = 'London')
--AND ShipVia=3 AND ShipCountry='France'

--EXEC TEST1