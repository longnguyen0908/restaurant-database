-- Indexes for common lookups.
-- The 2024 project report listed these with snake_case column names (last_name, reservation_date...)
-- that don't exist in the schema, so they never ran. Corrected to the real column names in 2026.

CREATE INDEX IF NOT EXISTS IDX_Customer_LastName ON Customer (LastName);       -- search and group by last name
CREATE INDEX IF NOT EXISTS IDX_Reservation_Date ON Reservation (ReservationDate); -- reservations by date
CREATE INDEX IF NOT EXISTS IDX_Inventory_ItemName ON Inventory (ItemName);    -- filter inventory items
CREATE INDEX IF NOT EXISTS IDX_Payment_OrderID ON Payment (OrderID);          -- payments for an order
CREATE INDEX IF NOT EXISTS IDX_Dish_DishName ON Dish (DishName);              -- search dish names
