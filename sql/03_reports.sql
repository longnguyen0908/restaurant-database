-- 20 report queries from the MIS 380 final project (Fall 2024).
-- Transcribed from the project's SQLiteStudio screenshots. Comments are the originals.

-- 1. Find all customers whose first name starts with "J": LIKE
SELECT FirstName, LastName
FROM Customer
WHERE FirstName LIKE 'J%';

-- 2. What is the total revenue generated from all payments: Aggregate Function
SELECT SUM(AmountPaid) AS TotalRevenue
FROM Payment;

-- 3. List customer names as "CustomerFirstName" and "CustomerLastName": ALIAS
SELECT C.FirstName AS CustomerFirstName, C.LastName AS CustomerLastName
FROM Customer C;

-- 4. Find all employees who are either a chef or a waiter: IN/NOT IN
SELECT EmployeeID, FirstName
FROM Employee
WHERE Role IN ('Chef', 'Waiter');

-- 5. List all reservations made between the 26th and 27th: BETWEEN
SELECT ReservationID, CustomerID, ReservationDate
FROM Reservation
WHERE ReservationDate BETWEEN '2024-11-26' AND '2024-11-27';

-- 6. Find orders that are either ordered at 7PM or served by a specific employee: AND/OR
SELECT OrderID, EmployeeID, OrderTime
FROM `Order`
WHERE OrderTime = '7:00 PM' OR EmployeeID = 6;

-- 7. Find all bills with more than 20$: Comparison Operators
SELECT PaymentID, AmountPaid
FROM Payment
WHERE AmountPaid > 20;

-- 8. Calculate the total amount paid in each payment method: GROUP BY
SELECT PaymentMethod, SUM(AmountPaid) AS TotalAmount
FROM Payment
GROUP BY PaymentMethod;

-- 9. Find payment methods with total amount paid more than 100$: HAVING
SELECT PaymentMethod, SUM(AmountPaid) AS TotalAmount
FROM Payment
GROUP BY PaymentMethod
HAVING SUM(AmountPaid) > 100;

-- 10. Find all dishes that cost more than the average price of all dishes: Non-Correlated Subquery
SELECT DishName, Price
FROM Dish
WHERE Price > (
SELECT AVG(Price)
FROM Dish
);

-- 11. Find all employees who have processed at least 1 order: EXISTS
SELECT EmployeeID, FirstName, LastName
FROM Employee e
WHERE EXISTS (
SELECT 1
FROM `Order` o
WHERE e.EmployeeID = o.EmployeeID
);

-- 12. Find customers whose reservation is after 2024-11-27: Correlated Subquery
SELECT CustomerID, FirstName, LastName
FROM Customer C
WHERE (
SELECT MAX(R.ReservationDate)
FROM Reservation R
WHERE R.CustomerID = C.CustomerID
) > '2024-11-27';

-- 13. Find customer details and reservation date of all customers who has a reservation date later than 2024-11-27: Inner Join
SELECT C.CustomerID, C.FirstName, C.LastName, R.ReservationDate
FROM Customer C
INNER JOIN Reservation R ON C.CustomerID = R.CustomerID
WHERE R.ReservationDate > '2024-11-27';

-- 14. Find details of all dishes with a higher price than 10$: Inner Join (3 tables)
SELECT d.DishName, d.Price, i.ItemName, s.SupplierName
FROM Dish d
INNER JOIN Inventory i ON d.InventoryID = i.InventoryID
INNER JOIN Supplier s ON i.InventoryID = s.SupplierID
WHERE d.Price > 10;

-- 15. Find all customer names and reservation date including those without reservations: OUTER JOIN
SELECT C.CustomerID, C.FirstName, C.LastName, R.ReservationDate
FROM Customer C
LEFT OUTER JOIN Reservation R ON C.CustomerID = R.CustomerID;

-- 16. Find all orders and their corresponding waiters: Equi Join
SELECT o.OrderID, o.OrderDate, e.FirstName AS WaiterName
FROM `Order` o
INNER JOIN Employee e ON o.WaiterID = e.EmployeeID;

-- 17. Find all employees hired after Alice: Self-Join
SELECT e1.EmployeeID, e1.FirstName, e1.HireDate
FROM Employee e1
INNER JOIN Employee e2 ON e1.HireDate > e2.HireDate
WHERE e2.EmployeeID = 1;

-- 18. Find the lowest and highest amount paid by customer: UNION
SELECT MIN(AmountPaid) AS PaymentAmount, 'Lowest Amount Paid' AS Type
FROM Payment
UNION
SELECT MAX(AmountPaid) AS PaymentAmount, 'Highest Amount Paid' AS Type
FROM Payment;

-- 19. Find all reservations made on or before 2024-11-27: Comparison Operators
SELECT ReservationID, CustomerID, ReservationDate
FROM Reservation
WHERE ReservationDate <= '2024-11-27';

-- 20. Find customers whose last name ends with an "n": LIKE
SELECT FirstName, LastName
FROM Customer
WHERE LastName LIKE '%n';
