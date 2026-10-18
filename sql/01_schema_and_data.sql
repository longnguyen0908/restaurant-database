--
-- File generated with SQLiteStudio v3.4.4 on Mon Dec 2 20:03:09 2024
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: Customer
CREATE TABLE IF NOT EXISTS Customer (CustomerID INTEGER PRIMARY KEY, FirstName TEXT, LastName TEXT, PhoneNumber TEXT, Email TEXT);
INSERT INTO Customer (CustomerID, FirstName, LastName, PhoneNumber, Email) VALUES (1, 'John', 'Doe', '123-456-7890', 'john.doe@example.com');
INSERT INTO Customer (CustomerID, FirstName, LastName, PhoneNumber, Email) VALUES (2, 'Jane', 'Smith', '234-567-8901', 'jane.smith@example.com');
INSERT INTO Customer (CustomerID, FirstName, LastName, PhoneNumber, Email) VALUES (3, 'Robert', 'Johnson', '345-678-9012', 'robert.j@example.com');
INSERT INTO Customer (CustomerID, FirstName, LastName, PhoneNumber, Email) VALUES (4, 'Emily', 'Davis', '456-789-0123', 'emily.d@example.com');
INSERT INTO Customer (CustomerID, FirstName, LastName, PhoneNumber, Email) VALUES (5, 'Michael', 'Brown', '567-890-1234', 'mike.b@example.com');
INSERT INTO Customer (CustomerID, FirstName, LastName, PhoneNumber, Email) VALUES (6, 'Linda', 'Miller', '678-901-2345', 'linda.m@example.com');
INSERT INTO Customer (CustomerID, FirstName, LastName, PhoneNumber, Email) VALUES (7, 'William', 'Wilson', '789-012-3456', 'william.w@example.com');
INSERT INTO Customer (CustomerID, FirstName, LastName, PhoneNumber, Email) VALUES (8, 'Sarah', 'Moore', '890-123-4567', 'sarah.m@example.com');
INSERT INTO Customer (CustomerID, FirstName, LastName, PhoneNumber, Email) VALUES (9, 'James', 'Taylor', '901-234-5678', 'james.t@example.com');
INSERT INTO Customer (CustomerID, FirstName, LastName, PhoneNumber, Email) VALUES (10, 'Olivia', 'Anderson', '012-345-6789', 'olivia.a@example.com');

-- Table: Dish
CREATE TABLE IF NOT EXISTS Dish (DishID INTEGER PRIMARY KEY, DishName TEXT, Description TEXT, Price NUMERIC, PreparationTime INTEGER, InventoryID INTEGER REFERENCES Inventory (InventoryID));
INSERT INTO Dish (DishID, DishName, Description, Price, PreparationTime, InventoryID) VALUES (1, 'Pancakes', 'Fluffy buttermilk pancakes', 8.99, '10 mins', 1);
INSERT INTO Dish (DishID, DishName, Description, Price, PreparationTime, InventoryID) VALUES (2, 'Bacon Cheeseburger', 'Juicy burger with bacon', 12.99, '15 mins', 2);
INSERT INTO Dish (DishID, DishName, Description, Price, PreparationTime, InventoryID) VALUES (3, 'Caesar Salad', 'Fresh romaine with dressing', 9.99, '5 mins', 3);
INSERT INTO Dish (DishID, DishName, Description, Price, PreparationTime, InventoryID) VALUES (4, 'Spaghetti', 'Pasta with marinara sauce', 10.99, '12 mins', 4);
INSERT INTO Dish (DishID, DishName, Description, Price, PreparationTime, InventoryID) VALUES (5, 'Grilled Cheese', 'Classic grilled cheese', 7.99, '8 mins', 5);
INSERT INTO Dish (DishID, DishName, Description, Price, PreparationTime, InventoryID) VALUES (6, 'Omelette', 'Customizable egg omelette', 11.99, '10 mins', 6);
INSERT INTO Dish (DishID, DishName, Description, Price, PreparationTime, InventoryID) VALUES (7, 'Chicken Tenders', 'Crispy fried chicken strips', 10.49, '10 mins', 7);
INSERT INTO Dish (DishID, DishName, Description, Price, PreparationTime, InventoryID) VALUES (8, 'T-Bone Steak', '12oz steak, cooked to order', 19.99, '20 mins', 8);
INSERT INTO Dish (DishID, DishName, Description, Price, PreparationTime, InventoryID) VALUES (9, 'Club Sandwich', 'Triple-layer deli sandwich', 10.99, '8 mins', 9);
INSERT INTO Dish (DishID, DishName, Description, Price, PreparationTime, InventoryID) VALUES (10, 'Chocolate Lava Cake', 'Rich molten chocolate cake', 6.99, '12 mins', 1);

-- Table: Employee
CREATE TABLE IF NOT EXISTS Employee (EmployeeID INTEGER PRIMARY KEY, FirstName TEXT, LastName TEXT, HireDate TEXT, PhoneNumber TEXT, Email TEXT, Role TEXT);
INSERT INTO Employee (EmployeeID, FirstName, LastName, HireDate, PhoneNumber, Email, Role) VALUES (1, 'Alice', 'Cooper', '2023-01-15', '111-222-3333', 'alice.c@example.com', 'Host');
INSERT INTO Employee (EmployeeID, FirstName, LastName, HireDate, PhoneNumber, Email, Role) VALUES (2, 'Bob', 'Marley', '2022-11-10', '222-333-4444', 'bob.m@example.com', 'Chef');
INSERT INTO Employee (EmployeeID, FirstName, LastName, HireDate, PhoneNumber, Email, Role) VALUES (3, 'Carol', 'Brady', '2023-02-20', '333-444-5555', 'carol.b@example.com', 'Waiter');
INSERT INTO Employee (EmployeeID, FirstName, LastName, HireDate, PhoneNumber, Email, Role) VALUES (4, 'David', 'Tennant', '2022-08-01', '444-555-6666', 'david.t@example.com', 'Chef');
INSERT INTO Employee (EmployeeID, FirstName, LastName, HireDate, PhoneNumber, Email, Role) VALUES (5, 'Eve', 'Adams', '2023-03-12', '555-666-7777', 'eve.a@example.com', 'Busser');
INSERT INTO Employee (EmployeeID, FirstName, LastName, HireDate, PhoneNumber, Email, Role) VALUES (6, 'Frank', 'Sinatra', '2023-04-10', '666-777-8888', 'frank.s@example.com', 'Waiter');
INSERT INTO Employee (EmployeeID, FirstName, LastName, HireDate, PhoneNumber, Email, Role) VALUES (7, 'Grace', 'Hopper', '2023-05-22', '777-888-9999', 'grace.h@example.com', 'Host');
INSERT INTO Employee (EmployeeID, FirstName, LastName, HireDate, PhoneNumber, Email, Role) VALUES (8, 'Henry', 'Ford', '2023-06-15', '888-999-0000', 'henry.f@example.com', 'Chef');
INSERT INTO Employee (EmployeeID, FirstName, LastName, HireDate, PhoneNumber, Email, Role) VALUES (9, 'Irene', 'Adler', '2023-07-08', '999-000-1111', 'irene.a@example.com', 'Busser');
INSERT INTO Employee (EmployeeID, FirstName, LastName, HireDate, PhoneNumber, Email, Role) VALUES (10, 'Jack', 'Daniels', '2023-08-30', '000-111-2222', 'jack.d@example.com', 'Waiter');

-- Table: Inventory
CREATE TABLE IF NOT EXISTS Inventory (InventoryID INTEGER PRIMARY KEY, ItemName TEXT, Quantity INTEGER, DishID INTEGER REFERENCES Dish (DishID));
INSERT INTO Inventory (InventoryID, ItemName, Quantity, DishID) VALUES (1, 'Pancake Batter', 20, 1);
INSERT INTO Inventory (InventoryID, ItemName, Quantity, DishID) VALUES (2, 'Ground Beef', 15, 2);
INSERT INTO Inventory (InventoryID, ItemName, Quantity, DishID) VALUES (3, 'Romaine Lettuce', 25, 3);
INSERT INTO Inventory (InventoryID, ItemName, Quantity, DishID) VALUES (4, 'Pasta', 30, 4);
INSERT INTO Inventory (InventoryID, ItemName, Quantity, DishID) VALUES (5, 'Bread', 50, 5);
INSERT INTO Inventory (InventoryID, ItemName, Quantity, DishID) VALUES (6, 'Eggs', 40, 6);
INSERT INTO Inventory (InventoryID, ItemName, Quantity, DishID) VALUES (7, 'Chicken Breast', 20, 7);
INSERT INTO Inventory (InventoryID, ItemName, Quantity, DishID) VALUES (8, 'Steak Cuts', 10, 8);
INSERT INTO Inventory (InventoryID, ItemName, Quantity, DishID) VALUES (9, 'Deli Meats', 25, 9);
INSERT INTO Inventory (InventoryID, ItemName, Quantity, DishID) VALUES (10, 'Chocolate Batter', 15, 10);

-- Table: Order
CREATE TABLE IF NOT EXISTS "Order" (OrderID INTEGER PRIMARY KEY, OrderDate TEXT, OrderTime TEXT, EmployeeID INTEGER REFERENCES Employee (EmployeeID), TableID INTEGER REFERENCES "Table" (TableID), POSID INTEGER REFERENCES POSSystem (POSID), WaiterID INTEGER);
INSERT INTO "Order" (OrderID, OrderDate, OrderTime, EmployeeID, TableID, POSID, WaiterID) VALUES (1, '2024-11-26', '12:30 PM', 1, 1, 1, 3);
INSERT INTO "Order" (OrderID, OrderDate, OrderTime, EmployeeID, TableID, POSID, WaiterID) VALUES (2, '2024-11-26', '1:00 PM', 2, 2, 2, 3);
INSERT INTO "Order" (OrderID, OrderDate, OrderTime, EmployeeID, TableID, POSID, WaiterID) VALUES (3, '2024-11-26', '6:00 PM', 4, 3, 3, 6);
INSERT INTO "Order" (OrderID, OrderDate, OrderTime, EmployeeID, TableID, POSID, WaiterID) VALUES (4, '2024-11-26', '7:00 PM', 5, 4, 4, 6);
INSERT INTO "Order" (OrderID, OrderDate, OrderTime, EmployeeID, TableID, POSID, WaiterID) VALUES (5, '2024-11-26', '7:30 PM', 6, 5, 5, 3);
INSERT INTO "Order" (OrderID, OrderDate, OrderTime, EmployeeID, TableID, POSID, WaiterID) VALUES (6, '2024-11-27', '11:30 AM', 7, 6, 6, 3);
INSERT INTO "Order" (OrderID, OrderDate, OrderTime, EmployeeID, TableID, POSID, WaiterID) VALUES (7, '2024-11-27', '12:00 PM', 8, 7, 7, 6);
INSERT INTO "Order" (OrderID, OrderDate, OrderTime, EmployeeID, TableID, POSID, WaiterID) VALUES (8, '2024-11-27', '1:30 PM', 9, 8, 8, 6);
INSERT INTO "Order" (OrderID, OrderDate, OrderTime, EmployeeID, TableID, POSID, WaiterID) VALUES (9, '2024-11-27', '7:00 PM', 10, 9, 9, 6);
INSERT INTO "Order" (OrderID, OrderDate, OrderTime, EmployeeID, TableID, POSID, WaiterID) VALUES (10, '2024-11-27', '8:00 PM', 1, 10, 10, 5);

-- Table: Payment
CREATE TABLE IF NOT EXISTS Payment (PaymentID INTEGER PRIMARY KEY, OrderID INTEGER REFERENCES "Order" (OrderID), PaymentMethod TEXT, PaymentDate TEXT, AmountPaid NUMERIC);
INSERT INTO Payment (PaymentID, OrderID, PaymentMethod, PaymentDate, AmountPaid) VALUES (1, 1, 'Credit Card', '2024-11-26', 20.99);
INSERT INTO Payment (PaymentID, OrderID, PaymentMethod, PaymentDate, AmountPaid) VALUES (2, 2, 'Cash', '2024-11-26', 15.49);
INSERT INTO Payment (PaymentID, OrderID, PaymentMethod, PaymentDate, AmountPaid) VALUES (3, 3, 'Credit Card', '2024-11-26', 35.99);
INSERT INTO Payment (PaymentID, OrderID, PaymentMethod, PaymentDate, AmountPaid) VALUES (4, 4, 'Cash', '2024-11-26', 28.99);
INSERT INTO Payment (PaymentID, OrderID, PaymentMethod, PaymentDate, AmountPaid) VALUES (5, 5, 'Debit Card', '2024-11-26', 40.49);
INSERT INTO Payment (PaymentID, OrderID, PaymentMethod, PaymentDate, AmountPaid) VALUES (6, 6, 'Credit Card', '2024-11-27', 12.99);
INSERT INTO Payment (PaymentID, OrderID, PaymentMethod, PaymentDate, AmountPaid) VALUES (7, 7, 'Cash', '2024-11-27', 50.99);
INSERT INTO Payment (PaymentID, OrderID, PaymentMethod, PaymentDate, AmountPaid) VALUES (8, 7, 'Debit Card', '2024-11-27', 65.49);
INSERT INTO Payment (PaymentID, OrderID, PaymentMethod, PaymentDate, AmountPaid) VALUES (9, 9, 'Credit Card', '2024-11-27', 23.99);
INSERT INTO Payment (PaymentID, OrderID, PaymentMethod, PaymentDate, AmountPaid) VALUES (10, 10, 'Cash', '2024-11-27', 18.99);

-- Table: POSSystem
CREATE TABLE IF NOT EXISTS POSSystem (POSID INTEGER PRIMARY KEY, OrderID INTEGER REFERENCES "Order" (OrderID), ChefID INTEGER, PaymentDate TEXT, Amount NUMERIC, WaiterID INTEGER);
INSERT INTO POSSystem (POSID, OrderID, ChefID, PaymentDate, Amount, WaiterID) VALUES (1, 1, 2, '2024-11-26', 20.99, 3);
INSERT INTO POSSystem (POSID, OrderID, ChefID, PaymentDate, Amount, WaiterID) VALUES (2, 2, 4, '2024-11-26', 15.49, 3);
INSERT INTO POSSystem (POSID, OrderID, ChefID, PaymentDate, Amount, WaiterID) VALUES (3, 3, 8, '2024-11-26', 35.99, 6);
INSERT INTO POSSystem (POSID, OrderID, ChefID, PaymentDate, Amount, WaiterID) VALUES (4, 4, 2, '2024-11-26', 28.99, 6);
INSERT INTO POSSystem (POSID, OrderID, ChefID, PaymentDate, Amount, WaiterID) VALUES (5, 5, 4, '2024-11-26', 40.49, 3);
INSERT INTO POSSystem (POSID, OrderID, ChefID, PaymentDate, Amount, WaiterID) VALUES (6, 6, 2, '2024-11-27', 12.99, 3);
INSERT INTO POSSystem (POSID, OrderID, ChefID, PaymentDate, Amount, WaiterID) VALUES (7, 7, 8, '2024-11-27', 50.99, 6);
INSERT INTO POSSystem (POSID, OrderID, ChefID, PaymentDate, Amount, WaiterID) VALUES (8, 8, 2, '2024-11-27', 65.49, 6);
INSERT INTO POSSystem (POSID, OrderID, ChefID, PaymentDate, Amount, WaiterID) VALUES (9, 9, 4, '2024-11-27', 23.99, 6);
INSERT INTO POSSystem (POSID, OrderID, ChefID, PaymentDate, Amount, WaiterID) VALUES (10, 1, 2, '2024-11-27', 18.99, 3);

-- Table: Reservation
CREATE TABLE IF NOT EXISTS Reservation (ReservationID INTEGER PRIMARY KEY, CustomerID INTEGER REFERENCES Customer (CustomerID), ReservationDate TEXT, ReservationTime TEXT, NumberOfGuests INTEGER);
INSERT INTO Reservation (ReservationID, CustomerID, ReservationDate, ReservationTime, NumberOfGuests) VALUES (1, 1, '2024-11-26', '6:30 PM', 4);
INSERT INTO Reservation (ReservationID, CustomerID, ReservationDate, ReservationTime, NumberOfGuests) VALUES (2, 2, '2024-11-26', '7:00 PM', 2);
INSERT INTO Reservation (ReservationID, CustomerID, ReservationDate, ReservationTime, NumberOfGuests) VALUES (3, 3, '2024-11-26', '8:00 PM', 5);
INSERT INTO Reservation (ReservationID, CustomerID, ReservationDate, ReservationTime, NumberOfGuests) VALUES (4, 4, '2024-11-27', '5:00 PM', 3);
INSERT INTO Reservation (ReservationID, CustomerID, ReservationDate, ReservationTime, NumberOfGuests) VALUES (5, 5, '2024-11-27', '6:30 PM', 6);
INSERT INTO Reservation (ReservationID, CustomerID, ReservationDate, ReservationTime, NumberOfGuests) VALUES (6, 6, '2024-11-27', '7:30 PM', 2);
INSERT INTO Reservation (ReservationID, CustomerID, ReservationDate, ReservationTime, NumberOfGuests) VALUES (7, 7, '2024-11-27', '8:00 PM', 4);
INSERT INTO Reservation (ReservationID, CustomerID, ReservationDate, ReservationTime, NumberOfGuests) VALUES (8, 8, '2024-11-28', '5:30 PM', 3);
INSERT INTO Reservation (ReservationID, CustomerID, ReservationDate, ReservationTime, NumberOfGuests) VALUES (9, 9, '2024-11-28', '7:00 PM', 2);
INSERT INTO Reservation (ReservationID, CustomerID, ReservationDate, ReservationTime, NumberOfGuests) VALUES (10, 10, '2024-11-28', '8:30 PM', 5);

-- Table: Supplier
CREATE TABLE IF NOT EXISTS Supplier (SupplierID INTEGER PRIMARY KEY, SupplierName TEXT, CompanyName TEXT, PhoneNumber TEXT, Email TEXT);
INSERT INTO Supplier (SupplierID, SupplierName, CompanyName, PhoneNumber, Email) VALUES (1, 'Tom''s Produce', 'Fresh Foods Inc.', '123-555-6789', 'tom@freshfoods.com');
INSERT INTO Supplier (SupplierID, SupplierName, CompanyName, PhoneNumber, Email) VALUES (2, 'Mary''s Meats', 'Butcher''s Choice', '124-555-7890', 'mary@butcherschoice.com');
INSERT INTO Supplier (SupplierID, SupplierName, CompanyName, PhoneNumber, Email) VALUES (3, 'Joe''s Dairy', 'DairyDelight Co.', '125-555-8901', 'joe@dairydelight.com');
INSERT INTO Supplier (SupplierID, SupplierName, CompanyName, PhoneNumber, Email) VALUES (4, 'Organic Greens', 'Organic Suppliers', '126-555-9012', 'sales@organicgreens.com');
INSERT INTO Supplier (SupplierID, SupplierName, CompanyName, PhoneNumber, Email) VALUES (5, 'Baker''s Delight', 'Bread Heaven Ltd.', '127-555-0123', 'contact@breadheaven.com');
INSERT INTO Supplier (SupplierID, SupplierName, CompanyName, PhoneNumber, Email) VALUES (6, 'Chef''s Corner', 'Specialty Goods', '128-555-1234', 'chefscorner@supplies.com');
INSERT INTO Supplier (SupplierID, SupplierName, CompanyName, PhoneNumber, Email) VALUES (7, 'Fisher''s Seafood', 'Ocean''s Harvest', '129-555-2345', 'fisher@oceansharvest.com');
INSERT INTO Supplier (SupplierID, SupplierName, CompanyName, PhoneNumber, Email) VALUES (8, 'Spice World', 'Flavor Supply LLC', '130-555-3456', 'sales@spiceworld.com');
INSERT INTO Supplier (SupplierID, SupplierName, CompanyName, PhoneNumber, Email) VALUES (9, 'Beverage Plus', 'Drink Supply Co.', '131-555-4567', 'orders@beverageplus.com');
INSERT INTO Supplier (SupplierID, SupplierName, CompanyName, PhoneNumber, Email) VALUES (10, 'Quality Oils', 'Gourmet Essentials', '132-555-5678', 'support@gourmetoil.com');

-- Table: Table
CREATE TABLE IF NOT EXISTS "Table" (TableID PRIMARY KEY, SeatingCapacity INTEGER);
INSERT INTO "Table" (TableID, SeatingCapacity) VALUES (1, 4);
INSERT INTO "Table" (TableID, SeatingCapacity) VALUES (2, 6);
INSERT INTO "Table" (TableID, SeatingCapacity) VALUES (3, 2);
INSERT INTO "Table" (TableID, SeatingCapacity) VALUES (4, 4);
INSERT INTO "Table" (TableID, SeatingCapacity) VALUES (5, 8);
INSERT INTO "Table" (TableID, SeatingCapacity) VALUES (6, 2);
INSERT INTO "Table" (TableID, SeatingCapacity) VALUES (7, 6);
INSERT INTO "Table" (TableID, SeatingCapacity) VALUES (8, 4);
INSERT INTO "Table" (TableID, SeatingCapacity) VALUES (9, 4);
INSERT INTO "Table" (TableID, SeatingCapacity) VALUES (10, 6);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
