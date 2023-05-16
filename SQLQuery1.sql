Create Database P138FirstSqlQuery

Use P138FirstSqlQuery

Create Table Groups(Salary int,Name nvarchar(20),Surname nvarchar(20),Pozition nvarchar(30))

Insert into Groups(Salary,Name,Surname,Pozition) Values(900,'Fuad','Aliyev',' Network administrator'),(700,'Nazim','Ibrahimov',' Web developer'),(1000,'Leman','Veliyeva','Systems analyst')

Create Table Students
(
	Salary int,
	Name nvarchar(100),
	SurName nvarchar(100),
	Pozition nvarchar(100),
)
Insert Into Students(Salary,Name,SurName,Pozition)
Values
(900,'Fuad','Aliyev',' Network administrator'),
(700,'Nazim','Ibrahimov',' Web developer'),
(1000,'Leman','Veliyeva','Systems analyst')

Select * From Students

--ortalama maas
SELECT AVG(Salary) AS AverageSalary FROM Students;
--ortalama maasdan yuxari maas alan isciler
SELECT Name, Surname, Salary FROM Students WHERE Salary > (SELECT AVG(Salary) FROM Students);
--Max, Min maaþlarý çýxarmaq üçün:
SELECT MAX(Salary) AS MaxSalary, MIN(Salary) AS MinSalary FROM Students;

--Task 2
CREATE DATABASE Market;

USE Market;

CREATE TABLE Products (
    Id int,
    Name VARCHAR(255),
    Price DECIMAL(10, 2),
    Brand VARCHAR(255)
);

INSERT INTO Products (Id, Name, Price, Brand)
VALUES
    (1, 'Product 1', 10.99, 'Brand 1'),
    (2, 'Product 2', 15.99, 'Brand 2'),
    (3, 'Product 3', 8.99, 'Brand 1'),
    (4, 'Product 4', 12.99, 'Brand 3'),
    (5, 'Product 5', 9.99, 'Brand 2'),
    (6, 'Product 6', 11.99, 'Brand 3'),
    (7, 'Product 7', 7.99, 'Brand 1'),
    (8, 'Product 8', 14.99, 'Brand 2'),
    (9, 'Product 9', 13.99, 'Brand 1'),
    (10, 'Product 10', 6.99, 'Brand 2');
	--Qiymeti Productlarin price-larinin average-den kicik olan Products datalarinin siyahisini getiren query 
	SELECT * FROM Products WHERE Price < (SELECT AVG(Price) FROM Products);
	--Qiymeti 10-dan yuxari olan Product datalarinin siyahisini getiren query yazin
	SELECT * FROM Products WHERE Price > 10;
	--Brand uzunlugu 5-den boyuk olan Productlarin siyahisini getiren query
	SELECT CONCAT(Name, ' - ', Brand) AS ProductInfo FROM Products WHERE LENGTH(Brand) > 5;

