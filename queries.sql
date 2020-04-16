-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

select productname, categoryname from product
join category
limit 77

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

select [order].Id, [order].ShipName from [order]
where [order].OrderDate > 2012-08-09
limit 429

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

SELECT Product.ProductName, OrderDetail.Quantity 
FROM OrderDetail 
JOIN Product 
ON Product.id = OrderDetail.ProductId 
WHERE OrderDetail.OrderId = 10251 
ORDER BY Product.ProductName;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

SELECT [order].id 
AS OrderId, customer.CompanyName, employee.LastName 
FROM [order] 
JOIN customer 
ON [order].CustomerId = customer.Id 
JOIN employee 
ON [order].EmployeeId = employee.Id;