# "Query inserting data into Bookings table"

INSERT INTO Bookings (BookingID, Date, TableNumber, CustomerID)
VALUES
(1, "2022-23-01", 3, 1),
(2, "2022-24-01", 2, 2),
(3, "2022-25-01", 1, 3),
(4, "2022-26-01", 6, 4),
(5, "2022-27-01", 5, 5),
(6, "2022-28-01", 4, 6);

# "Query inserting data into Customers table"

INSERT INTO Customers (CustomerID, GuestFirstName, GuestLastName, ContactNumber)
VALUES
(1, 'Genesis', 'Potter', 111111),
(2, 'Andres', 'Scarsella', 222222),
(3, 'Cesar','Gonzalez', 333333),
(4, 'Maria', 'Cabrera', 444444),
(5, 'Jessica', 'Benedict', 555555),
(6, 'Ryan', 'Smith', 666666);

# "Query inserting data into Menu table"

INSERT INTO Menu (MenuID, Cuisines, Starters, Courses, Drinks, Desserts)
VALUES
(1, 'Greek', 'Falafel', 'Greek Salad', 'Athens White wine', 'Greek yoghurt'),
(2, 'Greek', 'Hummus', 'Kabasa', 'Corfu Red Wine', 'Brownie'),
(3, 'Italian', 'Tomato Bread', 'Pizza', 'Doppio Expresso', 'Gelato'),
(4, 'Italian', 'Minestrone', 'Calzone', 'Rum di Lorezo', 'Cheesecake');

# "Query inserting data into OrderDeliveryStatus table"

INSERT INTO OrderDeliveryStatus (OrderDeliveryID, OrderDeliveryDate, Status)
VALUES
(1, "2022-23-01", 'Delivered'),
(2, "2022-23-01", 'Delivered'),
(3, "2022-23-01", 'Delivered'),
(4, "2022-23-01", 'Delivered');

# "Query inserting data into Orders table"


INSERT INTO Orders (orderID, OrderDate, Quantity, TotalCost, BookingID, OrderDeliveryID, StaffID, MenuID)
VALUES
(1, "2022-23-01", 2, 30, 1, 1, 1, 1),
(2, "2022-24-01", 1, 18, 2, 2, 2, 2),
(3, "2022-25-01", 3, 23, 3, 3, 3, 3),
(4, "2022-26-01", 4, 15, 4, 4, 4, 4);

# "Query inserting data into Orders table"

INSERT INTO Staff (StaffID, Role, Salary)
VALUES
(1, 'Manager', '60000'),
(2, 'Waiter', '45000'),
(3, 'Cook', '55000'),
(4, 'Busser', '38000');