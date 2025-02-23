--NORTHWIND SORGU ÖRNEKLERÝ

--Products tablosunda yer alan verileri listeleyen sorgu
--SELECT * FROM Products

--Products tablosunda yer alan verilerin CategoryID deðeri 1 olanlarý listeleyen sorgu
--SELECT * FROM Products WHERE CategoryID=1

--Products tablosunda yer alan verilerin CategoryName deðeri 'SeaFood' olanlarý listeleyen sorgu
--SELECT * FROM Products WHERE CategoryID = (SELECT CategoryID FROM Categories WHERE CategoryName='SeaFood')

--Products tablosunda yer alan verilerin CategoryName deðeri 'SeaFood' olanlarý ve UnitsInStock deðeri 50'den büyük olanlarý listeleyen sorgu
--SELECT * FROM Products WHERE CategoryID = (SELECT CategoryID FROM Categories WHERE CategoryName='SeaFood') AND UnitsInStock > 50

--Products tablosunda yer alan verilerin CategoryName deðeri 'SeaFood' olanlarý ve UnitsInStock deðeri 20'den büyük olanlarý 
--ve þehri Osaka olanlarý listeleyen sorgu
--SELECT * FROM Products WHERE CategoryID = (SELECT CategoryID FROM Categories WHERE CategoryName='SeaFood') 
--AND UnitsInStock > 20 AND SupplierID= (SELECT SupplierID FROM Suppliers WHERE City='Osaka')

--Orders tablosu içerisinde þehri Londra olan çalýþanlarýn vermiþ olduðu sipariþleri ve ShipVia=3 olanlarý ve ShipCity='Oulu' olanlarý listeleyen sorgu
--SELECT * FROM Orders WHERE EmployeeID IN(SELECT EmployeeID FROM Employees WHERE City = 'London')
--AND ShipVia=3 AND ShipCity='Oulu'

--Prosedür olarak Orders tablosu içerisinde þehri Londra olan çalýþanlarýn vermiþ olduðu sipariþleri ve ShipVia=3 olanlarý 
--ve ShipCountry='France' olanlarý listeleyen sorgu
--CREATE PROCEDURE TEST1
--AS
--SELECT * FROM Orders WHERE EmployeeID IN(SELECT EmployeeID FROM Employees WHERE City = 'London')
--AND ShipVia=3 AND ShipCountry='France'

--EXEC TEST1