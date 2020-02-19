-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
  SELECT 
      ProductName,
      Category.CategoryName
  FROM Product
  JOIN Category ON Product.CategoryId = Category.id;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT id, shipname FROM [Order]
WHERE orderDate < '2012-08-09';

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT 
    product.ProductName,
    quantity
 FROM OrderDetail
 JOIN Product ON orderDetail.ProductId = product.id
 WHERE orderID = 10251

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT id as orderID, Customer.CompanyName, Employee.LastName 
FROM [Order] as o
JOIN Customer ON o.CustomerId = Customer.id
JOIN Employee ON o.EmployeeId = Employee.id
