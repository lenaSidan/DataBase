-- Задача 2. Вывести название и стоимость товаров от 20 EUR.
SELECT
	ProductName,
    Price
FROM Products
WHERE
	Price >=20;

-- Задача 3. Вывести страны поставщиков.
SELECT
	Country
FROM Suppliers;

-- Задача 4. В упорядоченном по стоимости виде вывести
-- название и стоимость товаров со скидкой в 9% от всех поставщиков, кроме поставщика 1.
SELECT
	ProductName,
    Price * 0.91 AS DiscountedPrice
FROM Products
WHERE
	SupplierID != 1
ORDER BY DiscountedPrice;

-- Задача 5. Вывести контактные имена клиентов, кроме тех, что из France и USA.
SELECT
	ContactName
FROM Customers
WHERE
	NOT Country IN ('France', 'USA');