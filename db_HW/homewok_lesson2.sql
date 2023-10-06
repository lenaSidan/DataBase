1.Вывести название и стоимость в USD одного самого дорогого проданного товара
SELECT
    Products.ProductName,
    Products.Price
FROM
    Products
JOIN
    OrderDetails ON Products.ProductID = OrderDetails.ProductID
ORDER BY
    Products.Price DESC
LIMIT 1;

2.Вывести два самых дорогих товара из категории Beverages из USA
SELECT
    Products.ProductName,
    Products.Price
FROM
    Products
JOIN
    Categories ON Products.CategoryID = Categories.CategoryID
JOIN
    Suppliers ON Products.SupplierID = Suppliers.SupplierID
WHERE
    Categories.CategoryName = 'Beverages' AND Suppliers.Country = 'USA'
ORDER BY
    Products.Price DESC
LIMIT 2;


3.Удалить товары с ценой менее 5 EUR
DELETE FROM Products
WHERE Price < 5;

4.Вывести список стран, которые поставляют напитки
SELECT DISTINCT
    Suppliers.Country
FROM
    Suppliers
JOIN
    Products ON Suppliers.SupplierID = Products.SupplierID
JOIN
    Categories ON Products.CategoryID = Categories.CategoryID
WHERE
    Categories.CategoryName = 'Beverages';

5.Очистить поле ContactName у всех клиентов не из China
UPDATE Customers
SET ContactName = NULL
WHERE Country != 'China';
