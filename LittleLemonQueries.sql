USE LittleLemonDB;
DROP PROCEDURE IF EXISTS GetMaxQuantity;
CREATE PROCEDURE GetMaxQuantity() SELECT MAX(Quantity) AS GetMaxQuantity FROM Orders;
CALL GetMaxQuantity();

### "Creating the procedure ManageBooking" 

USE LittleLemonDB;
DROP PROCEDURE IF EXISTS ManageBooking;
CREATE PROCEDURE ManageBooking(Date DATE,TableNumber INT)
    SELECT CONCAT("Table ", TableNumber, " is already booked")
    WHERE EXISTS (SELECT * FROM Bookings WHERE Date = Date and TableNumber = TableNumber)
CALL ManageBooking("2022-23-01", 3);

### "Creating the procedure UpdateBooking"

DROP PROCEDURE IF EXISTS UpdateBooking;
DELIMITER $$ 
CREATE PROCEDURE UpdateBooking(BookingID INT, Date DATE) 
BEGIN
UPDATE Bookings SET DATE = Date WHERE BookingID = BookingID; 
SELECT CONCAT("Booking ", BookingID, " updated") AS "Confirmation"; 
END$$ 
DELIMITER ; 
CALL UpdateBooking(4, "2022-27-01");

### "Creating the procedure AddBooking"

DROP PROCEDURE IF EXISTS AddBooking; 
DELIMITER $$ 
CREATE PROCEDURE AddBooking(BookingID INT, CustomerID INT, TableNumber INT, BookingDate DATE)
BEGIN 
INSERT INTO Bookings (booking_id, customer_id, table_number, date) VALUES (BookingID, CustomerID, TableNumber, Date); 
SELECT "New booking added" AS "Confirmation";
END$$ DELIMITER ; 
CALL AddBooking(9, 3, 4, "2022-28-01");


### "Creating the procedure CancelBooking"

DROP PROCEDURE IF EXISTS CancelBooking; 
DELIMITER $$ 
CREATE PROCEDURE CancelBooking(BookingID INT) 
BEGIN 
DELETE FROM Bookings WHERE booking_id = BookingID; SELECT CONCAT("Booking ", BookingID, " cancelled") AS "Confirmation"; 
END$$ 
DELIMITER ; 
CALL CancelBooking(2);
