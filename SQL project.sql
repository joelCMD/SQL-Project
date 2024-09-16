#sql project 
use collage2


# 1. Top Sales per Customer

SELECT Customer_ID, Customer_Name, SUM(Sales) AS TotalSales
FROM Superstore
GROUP BY Customer_ID, Customer_Name
ORDER BY TotalSales DESC;


# 2. Average Discount by Product Category

SELECT Category, AVG(Discount) AS AverageDiscount
FROM Superstore
GROUP BY Category;

# 3. Top 5 Cities by Total Sales

SELECT City, SUM(Sales) AS TotalSales
FROM Superstore
GROUP BY City
ORDER BY TotalSales DESC
LIMIT 5;

# 4. Products with Sales Greater than $5000

SELECT ProductName, SUM(Sales) AS TotalSales
FROM Superstore`Product Name`
GROUP BY ProductName
having TotalSales > 5000;

# 5. Number of Orders per Shipping Mode

SELECT ShipMode, COUNT(Order_ID) AS NumberOfOrders
FROM Superstore
GROUP BY ShipMode;

