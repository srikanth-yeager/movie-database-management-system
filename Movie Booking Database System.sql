create database project;
use project;

-- Movie Booking Table--   
CREATE TABLE MovieBookings (
    BookingID INT PRIMARY KEY AUTO_INCREMENT,
    MovieID INT NOT NULL,
    UserID INT NOT NULL,
    BookingDate DATE NOT NULL,
    BookingTime TIME NOT NULL,
    NumTickets INT NOT NULL,
    TotalPrice DECIMAL(10, 2) NOT NULL,
    PaymentStatus ENUM('Pending', 'Completed') NOT NULL,
    SeatNumber VARCHAR(10) NOT NULL,
    FOREIGN KEY (MovieID) REFERENCES Movies(MovieID),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

-- Movies Table-- 
CREATE TABLE Movies (
    MovieID INT PRIMARY KEY AUTO_INCREMENT,
    MovieName VARCHAR(100) NOT NULL,
    ReleaseDate DATE NOT NULL,
    Genre VARCHAR(50) NOT NULL,
    -- Add other columns as needed
    UNIQUE(MovieName) -- Ensure movie names are unique
);

-- Users Table-- 
CREATE TABLE Users (
    UserID INT PRIMARY KEY AUTO_INCREMENT,
    Username VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    -- Add other columns as needed
    UNIQUE(Username), -- Ensure usernames are unique
    UNIQUE(Email) -- Ensure emails are unique
);

-- Inserting Values into User Table-- 
INSERT INTO Users (UserID,Username, Email)
VALUES
(101,'JohnDoe', 'john.doe@example.com'),
(102,'JaneSmith', 'jane.smith@example.com'),
(103,'MichaelJohnson', 'michael.johnson@example.com'),
(104,'EmilyBrown', 'emily.brown@example.com'),
(105,'WilliamDavis', 'william.davis@example.com'),
(106,'EmmaWilson', 'emma.wilson@example.com'),
(107,'DanielMartinez', 'daniel.martinez@example.com'),
(108,'OliviaTaylor', 'olivia.taylor@example.com'),
(109,'MatthewAnderson', 'matthew.anderson@example.com'),
(110,'AvaThomas', 'ava.thomas@example.com'),
(111,'AlexanderHernandez', 'alexander.hernandez@example.com'),
(112,'SophiaMoore', 'sophia.moore@example.com'),
(113,'JamesMartin', 'james.martin@example.com'),
(114,'CharlotteGarcia', 'charlotte.garcia@example.com'),
(115,'BenjaminRodriguez', 'benjamin.rodriguez@example.com'),
(116,'AmeliaLopez', 'amelia.lopez@example.com'),
(117,'DavidLee', 'david.lee@example.com'),
(118,'HarperGonzalez', 'harper.gonzalez@example.com'),
(119,'EthanPerez', 'ethan.perez@example.com'),
(120,'EvelynHarris', 'evelyn.harris@example.com');

select*from Users;

-- Inserting Values into Movies table-- 
INSERT INTO Movies (MovieID,MovieName, ReleaseDate, Genre)
VALUES
(1,'The Shawshank Redemption', '1994-10-14', 'Drama'),
(2,'The Godfather', '1972-03-24', 'Crime'),
(3,'The Dark Knight', '2008-07-18', 'Action'),
(4,'The Godfather: Part II', '1974-12-20', 'Crime'),
(5,'12 Angry Men', '1957-04-10', 'Drama'),
(6,'Schindler''s List', '1993-12-15', 'Biography'),
(7,'The Lord of the Rings: The Return of the King', '2003-12-17', 'Adventure'),
(8,'Pulp Fiction', '1994-10-14', 'Crime'),
(9,'The Lord of the Rings: The Fellowship of the Ring', '2001-12-19', 'Adventure'),
(10,'Forrest Gump', '1994-07-06', 'Drama'),
(11,'Inception', '2010-07-16', 'Action'),
(12,'The Matrix', '1999-03-31', 'Action'),
(13,'Star Wars: Episode V - The Empire Strikes Back', '1980-05-21', 'Action'),
(14,'The Silence of the Lambs', '1991-02-14', 'Crime'),
(15,'The Lord of the Rings: The Two Towers', '2002-12-18', 'Adventure'),
(16,'Se7en', '1995-09-22', 'Crime'),
(17,'Goodfellas', '1990-09-19', 'Biography'),
(18,'Fight Club', '1999-10-15', 'Drama'),
(19,'The Usual Suspects', '1995-09-15', 'Crime'),
(20,'The Lion King', '1994-06-24', 'Animation'),
(21,'John Wick 4', '2023-07-06', 'Action'),
(22,'Titanic', '1997-12-19', 'Drama'),
(23,'Avatar', '2009-12-18', 'Action'),
(24,'Jurassic Park', '1993-06-11', 'Adventure'),
(25,'The Avengers', '2012-05-04', 'Action'),
(26,'The Terminator', '1984-10-26', 'Action'),
(27,'Jaws', '1975-06-20', 'Thriller'),
(28,'Rocky', '1976-11-21', 'Drama'),
(29,'Back to the Future', '1985-07-03', 'Adventure'),
(30,'Interstellar','2014-11-07','Adventure');

select*from Movies;

-- Inserting values into MovieBookings table-- 
INSERT INTO MovieBookings (BookingID, MovieID, UserID, BookingDate, BookingTime, NumTickets, TotalPrice, PaymentStatus, SeatNumber)
VALUES
(1, 1, 101, '2023-02-10', '15:00:00', 2, 200.00, 'Completed', 'A1'),
(2, 2, 102, '2023-02-11', '18:30:00', 3, 300.00, 'Completed', 'B5'),
(3, 3, 103, '2023-02-12', '20:15:00', 1, 100.00, 'Pending', 'C3'),
-- Insert additional records as needed
(4, 4, 104, '2023-02-13', '14:00:00', 4, 400.00, 'Completed', 'D2'),
(5, 5, 105, '2023-02-14', '17:45:00', 2, 200.00, 'Completed', 'E7'),
(6, 6, 106, '2023-02-15', '19:00:00', 3, 300.00, 'Pending', 'F10'),
-- Insert additional records as needed
(7, 7, 107, '2023-02-16', '21:30:00', 1, 100.00, 'Completed', 'G3'),
(8, 8, 108, '2023-02-17', '16:45:00', 2, 200.00, 'Pending', 'H4'),
(9, 9, 109, '2023-02-18', '13:15:00', 3, 300.00, 'Completed', 'I9'),
-- Insert additional records as needed
(10, 10, 110, '2023-02-19', '20:00:00', 4, 400.00, 'Completed', 'J6'),
(11, 11, 111, '2023-02-20', '17:30:00', 2, 200.00, 'Pending', 'K2'),
(12, 12, 112, '2023-02-21', '19:45:00', 1, 100.00, 'Completed', 'L8'),
-- Insert additional records as needed
(13, 13, 113, '2023-02-22', '15:00:00', 2, 200.00, 'Completed', 'A1'),
(14, 14, 114, '2023-02-23', '18:30:00', 3, 300.00, 'Completed', 'B5'),
(15, 15, 115, '2023-02-24', '20:15:00', 1, 100.00, 'Pending', 'C3'),
-- Insert additional records as needed
(16, 16, 116, '2023-02-25', '14:00:00', 4, 400.00, 'Completed', 'D2'),
(17, 17, 117, '2023-02-26', '17:45:00', 2, 200.00, 'Completed', 'E7'),
(18, 18, 118, '2023-02-27', '19:00:00', 3, 300.00, 'Pending', 'F10'),
-- Insert additional records as needed
(19, 19, 119, '2023-02-28', '21:30:00', 1, 100.00, 'Completed', 'G3'),
(20, 20, 120, '2023-03-01', '16:45:00', 2, 200.00, 'Pending', 'H4'),
(21, 21, 101, '2023-03-02', '13:15:00', 3, 300.00, 'Completed', 'I9'),
-- Insert additional records as needed
(22, 22, 102, '2023-03-03', '20:00:00', 4, 400.00, 'Completed', 'J6'),
(23, 23, 103, '2023-03-04', '17:30:00', 2, 200.00, 'Pending', 'K2'),
(24, 24, 104, '2023-03-05', '19:45:00', 1, 100.00, 'Completed', 'L8'),
-- Insert additional records as needed
(25, 25, 105, '2023-03-06', '15:00:00', 2, 200.00, 'Completed', 'A1'),
(26, 26, 106, '2023-03-07', '18:30:00', 3, 300.00, 'Completed', 'B5'),
(27, 27, 107, '2023-03-08', '20:15:00', 1, 100.00, 'Pending', 'C3'),
-- Insert additional records as needed
(28, 28, 108, '2023-03-09', '14:00:00', 4, 400.00, 'Completed', 'D2'),
(29, 29, 109, '2023-03-10', '17:45:00', 2, 200.00, 'Completed', 'E7'),
(30, 30, 110, '2023-03-11', '19:00:00', 3, 300.00, 'Pending', 'F10'),
-- Insert additional records as needed
(31, 1, 111, '2023-03-12', '21:30:00', 1, 100.00, 'Completed', 'G3'),
(32, 2, 112, '2023-03-13', '16:45:00', 2, 200.00, 'Pending', 'H4'),
(33, 3, 113, '2023-03-14', '13:15:00', 3, 300.00, 'Completed', 'I9'),
-- Insert additional records as needed
(34, 4, 114, '2023-03-15', '20:00:00', 4, 400.00, 'Completed', 'J6'),
(35, 5, 115, '2023-03-16', '17:30:00', 2, 200.00, 'Pending', 'K2'),
(36, 6, 116, '2023-03-17', '19:45:00', 1, 100.00, 'Completed', 'L8'),
-- Insert additional records as needed
(37, 7, 117, '2023-03-18', '15:00:00', 2, 200.00, 'Completed', 'A1'),
(38, 8, 118, '2023-03-19', '18:30:00', 3, 300.00, 'Completed', 'B5'),
(39, 9, 119, '2023-03-20', '20:15:00', 1, 100.00, 'Pending', 'C3'),
-- Insert additional records as needed
(40, 10, 120, '2023-03-21', '14:00:00', 4, 400.00, 'Completed', 'D2'),
(41, 11, 101, '2023-03-22', '17:45:00', 2, 200.00, 'Completed', 'E7'),
(42, 12, 102, '2023-03-23', '19:00:00', 3, 300.00, 'Pending', 'F10'),
-- Insert additional records as needed
(43, 13, 103, '2023-03-24', '21:30:00', 1, 100.00, 'Completed', 'G3'),
(44, 14, 104, '2023-03-25', '16:45:00', 2, 200.00, 'Pending', 'H4'),
(45, 15, 105, '2023-03-26', '13:15:00', 3, 300.00, 'Completed', 'I9'),
-- Insert additional records as needed
(46, 16, 106, '2023-03-27', '20:00:00', 4, 400.00, 'Completed', 'J6'),
(47, 17, 107, '2023-03-28', '17:30:00', 2, 200.00, 'Pending', 'K2'),
(48, 18, 108, '2023-03-29', '19:45:00', 1, 100.00, 'Completed', 'L8'),
-- Insert additional records as needed
(49, 19, 109, '2023-03-30', '15:00:00', 2, 200.00, 'Completed', 'A1'),
(50, 20, 110, '2023-03-31', '18:30:00', 3, 300.00, 'Completed', 'B5'),
(51, 21, 111, '2023-04-01', '20:15:00', 1, 100.00, 'Pending', 'C3'),
-- Insert additional records as needed
(52, 22, 112, '2023-04-02', '14:00:00', 4, 400.00, 'Completed', 'D2'),
(53, 23, 113, '2023-04-03', '17:45:00', 2, 200.00, 'Completed', 'E7'),
(54, 24, 114, '2023-04-04', '19:00:00', 3, 300.00, 'Pending', 'F10'),
-- Insert additional records as needed
(55, 25, 115, '2023-04-05', '21:30:00', 1, 100.00, 'Completed', 'G3'),
(56, 26, 116, '2023-04-06', '16:45:00', 2, 200.00, 'Pending', 'H4'),
(57, 27, 117, '2023-04-07', '13:15:00', 3, 300.00, 'Completed', 'I9'),
-- Insert additional records as needed
(58, 28, 118, '2023-04-08', '20:00:00', 4, 400.00, 'Completed', 'J6'),
(59, 29, 119, '2023-04-09', '17:30:00', 2, 200.00, 'Pending', 'K2'),
(60, 30, 120, '2023-04-10', '19:45:00', 1, 100.00, 'Completed', 'L8');
-- Insert additional records as needed


-- Inserting additional values into the moviebookings table-- 
INSERT INTO MovieBookings (MovieID, UserID, BookingDate, BookingTime, NumTickets, TotalPrice, PaymentStatus, SeatNumber)
VALUES
(1, 101, '2023-04-11', '15:00:00', 2, 200.00, 'Completed', 'A1'),
(2, 102, '2023-04-12', '18:30:00', 3, 300.00, 'Completed', 'B5'),
(3, 103, '2023-04-13', '20:15:00', 1, 100.00, 'Completed', 'C3'),
-- Insert additional records as needed
(4, 104, '2023-04-14', '14:00:00', 4, 400.00, 'Completed', 'D2'),
(5, 105, '2023-04-15', '17:45:00', 2, 200.00, 'Completed', 'E7'),
(6, 106, '2023-04-16', '19:00:00', 3, 300.00, 'Completed', 'F10'),
-- Insert additional records as needed
(7, 107, '2023-04-17', '21:30:00', 1, 100.00, 'Completed', 'G3'),
(8, 108, '2023-04-18', '16:45:00', 2, 200.00, 'Completed', 'H4'),
(9, 109, '2023-04-19', '13:15:00', 3, 300.00, 'Completed', 'I9'),
-- Insert additional records as needed
(10, 110, '2023-04-20', '20:00:00', 4, 400.00, 'Completed', 'J6'),
(11, 111, '2023-04-21', '17:30:00', 2, 200.00, 'Completed', 'K2'),
(12, 112, '2023-04-22', '19:45:00', 1, 100.00, 'Completed', 'L8'),
-- Insert additional records as needed
(13, 113, '2023-04-23', '15:00:00', 2, 200.00, 'Completed', 'A1'),
(14, 114, '2023-04-24', '18:30:00', 3, 300.00, 'Completed', 'B5'),
(15, 115, '2023-04-25', '20:15:00', 1, 100.00, 'Completed', 'C3'),
-- Insert additional records as needed
(16, 116, '2023-04-26', '14:00:00', 4, 400.00, 'Completed', 'D2'),
(17, 117, '2023-04-27', '17:45:00', 2, 200.00, 'Completed', 'E7'),
(18, 118, '2023-04-28', '19:00:00', 3, 300.00, 'Completed', 'F10'),
-- Insert additional records as needed
(19, 119, '2023-04-29', '21:30:00', 1, 100.00, 'Completed', 'G3'),
(20, 120, '2023-04-30', '16:45:00', 2, 200.00, 'Completed', 'H4'),
(21, 101, '2023-05-01', '13:15:00', 3, 300.00, 'Completed', 'I9'),
-- Insert additional records as needed
(22, 102, '2023-05-02', '20:00:00', 4, 400.00, 'Completed', 'J6'),
(23, 103, '2023-05-03', '17:30:00', 2, 200.00, 'Completed', 'K2'),
(24, 104, '2023-05-04', '19:45:00', 1, 100.00, 'Completed', 'L8'),
-- Insert additional records as needed
(25, 105, '2023-05-05', '15:00:00', 2, 200.00, 'Completed', 'A1'),
(26, 106, '2023-05-06', '18:30:00', 3, 300.00, 'Completed', 'B5'),
(27, 107, '2023-05-07', '20:15:00', 1, 100.00, 'Completed', 'C3'),
-- Insert additional records as needed
(28, 108, '2023-05-08', '14:00:00', 4, 400.00, 'Completed', 'D2'),
(29, 109, '2023-05-09', '17:45:00', 2, 200.00, 'Completed', 'E7'),
(30, 110, '2023-05-10', '19:00:00', 3, 300.00, 'Completed', 'F10'),
-- Insert additional records as needed
(1, 111, '2023-05-11', '21:30:00', 1, 100.00, 'Completed', 'G3'),
(2, 112, '2023-05-12', '16:45:00', 2, 200.00, 'Completed', 'H4'),
(3, 113, '2023-05-13', '13:15:00', 3, 300.00, 'Completed', 'I9'),
-- Insert additional records as needed
(4, 114, '2023-05-14', '20:00:00', 4, 400.00, 'Completed', 'J6'),
(5, 115, '2023-05-15', '17:30:00', 2, 200.00, 'Completed', 'K2'),
(6, 116, '2023-05-16', '19:45:00', 1, 100.00, 'Completed', 'L8'),
-- Insert additional records as needed
(7, 117, '2023-05-17', '15:00:00', 2, 200.00, 'Completed', 'A1'),
(8, 118, '2023-05-18', '18:30:00', 3, 300.00, 'Completed', 'B5'),
(9, 119, '2023-05-19', '20:15:00', 1, 100.00, 'Completed', 'C3'),
-- Insert additional records as needed
(10, 120, '2023-05-20', '14:00:00', 4, 400.00, 'Completed', 'D2'),
(11, 101, '2023-05-21', '17:45:00', 2, 200.00, 'Completed', 'E7'),
(12, 102, '2023-05-22', '19:00:00', 3, 300.00, 'Completed', 'F10'),
-- Insert additional records as needed
(13, 103, '2023-05-23', '21:30:00', 1, 100.00, 'Completed', 'G3'),
(14, 104, '2023-05-24', '16:45:00', 2, 200.00, 'Completed', 'H4'),
(15, 105, '2023-05-25', '13:15:00', 3, 300.00, 'Completed', 'I9'),
-- Insert additional records as needed
(16, 106, '2023-05-26', '20:00:00', 4, 400.00, 'Completed', 'J6'),
(17, 107, '2023-05-27', '17:30:00', 2, 200.00, 'Completed', 'K2'),
(18, 108, '2023-05-28', '19:45:00', 1, 100.00, 'Completed', 'L8'),
-- Insert additional records as needed
(19, 109, '2023-01-07', '15:00:00', 2, 200.00, 'Completed', 'A1'),
(20, 110, '2023-01-08', '18:30:00', 3, 300.00, 'Completed', 'B5'),
(21, 111, '2023-01-14', '20:15:00', 1, 100.00, 'Completed', 'C3'),
-- Insert additional records as needed
(22, 112, '2023-01-15', '14:00:00', 4, 400.00, 'Completed', 'D2'),
(23, 113, '2023-01-21', '17:45:00', 2, 200.00, 'Completed', 'E7'),
(24, 114, '2023-01-22', '19:00:00', 3, 300.00, 'Completed', 'F10'),
-- Insert additional records as needed
(25, 115, '2023-01-28', '21:30:00', 1, 100.00, 'Completed', 'G3'),
(26, 116, '2023-01-29', '16:45:00', 2, 200.00, 'Completed', 'H4'),
(27, 117, '2023-02-04', '13:15:00', 3, 300.00, 'Completed', 'I9'),
-- Insert additional records as needed
(28, 118, '2023-02-05', '20:00:00', 4, 400.00, 'Completed', 'J6'),
(29, 119, '2023-02-11', '17:30:00', 2, 200.00, 'Completed', 'K2'),
(30, 120, '2023-02-12', '19:45:00', 1, 100.00, 'Completed', 'L8'),
-- Insert additional records as needed
(1, 101, '2023-02-18', '15:00:00', 2, 200.00, 'Completed', 'A1'),
(2, 102, '2023-02-19', '18:30:00', 3, 300.00, 'Completed', 'B5'),
(3, 103, '2023-02-25', '20:15:00', 1, 100.00, 'Completed', 'C3'),
-- Insert additional records as needed
(4, 104, '2023-02-26', '14:00:00', 4, 400.00, 'Completed', 'D2'),
(5, 105, '2023-03-04', '17:45:00', 2, 200.00, 'Completed', 'E7'),
(6, 106, '2023-03-05', '19:00:00', 3, 300.00, 'Completed', 'F10'),
-- Insert additional records as needed
(7, 107, '2023-03-11', '21:30:00', 1, 100.00, 'Completed', 'G3'),
(8, 108, '2023-03-12', '16:45:00', 2, 200.00, 'Completed', 'H4'),
(9, 109, '2023-03-18', '13:15:00', 3, 300.00, 'Completed', 'I9'),
-- Insert additional records as needed
(10, 110, '2023-03-19', '20:00:00', 4, 400.00, 'Completed', 'J6'),
(11, 111, '2023-03-25', '17:30:00', 2, 200.00, 'Completed', 'K2'),
(12, 112, '2023-03-26', '19:45:00', 1, 100.00, 'Completed', 'L8');
-- Insert additional records as needed

 
select * from moviebookings;


-- PROBLEM STATEMENTS


-- 1. Retrieve the list of movies along with the number of bookings made for each movie:

SELECT M.MovieID, M.MovieName, COUNT(B.BookingID) AS NumBookings
FROM Movies M
LEFT JOIN MovieBookings B ON M.MovieID = B.MovieID
GROUP BY M.MovieID, M.MovieName;


-- 2. Find out the total revenue generated from completed bookings for each movie:

SELECT M.MovieID, M.MovieName, SUM(B.TotalPrice) AS TotalRevenue
FROM Movies M
INNER JOIN MovieBookings B ON M.MovieID = B.MovieID
WHERE B.PaymentStatus = 'Completed'
GROUP BY M.MovieID, M.MovieName;


-- 3. Retrieve the top 3 movies with the highest average revenue per booking:

SELECT M.MovieID, M.MovieName, AVG(B.TotalPrice) AS AvgRevenuePerBooking
FROM MovieBookings B
JOIN Movies M ON B.MovieID = M.MovieID
GROUP BY M.MovieID, M.MovieName
ORDER BY AvgRevenuePerBooking DESC
LIMIT 3;


-- 4. Calculate the average revenue per booking for each genre of movies and compare it with the overall average revenue per booking:

SELECT Genre, AVG(TotalPrice) AS AvgRevenuePerBooking
FROM MovieBookings
JOIN Movies ON MovieBookings.MovieID = Movies.MovieID
GROUP BY Genre
UNION
SELECT 'Overall' AS Genre, AVG(TotalPrice) AS AvgRevenuePerBooking
FROM MovieBookings;


-- 5. Retrieve the list of movies that have generated revenue above the overall average revenue per booking:

SELECT M.MovieID, M.MovieName, SUM(B.TotalPrice) AS TotalRevenue
FROM MovieBookings B
JOIN Movies M ON B.MovieID = M.MovieID
GROUP BY M.MovieID, M.MovieName
HAVING TotalRevenue > (
    SELECT AVG(TotalPrice)
    FROM MovieBookings
);


-- 6. Retrieve all bookings made by a specific user:

call GetBookingsByUser(105);


-- 7. Calculate the total revenue generated from movie bookings within a specified date range:

call CalculateTotalRevenue('2023-01-01','2023-12-31');


-- 8. Retrieve the list of users who have made bookings for more than one movie:

SELECT UserID
FROM MovieBookings
GROUP BY UserID
HAVING COUNT(DISTINCT MovieID) > 1;


-- 9. Query to display total revenue generated on weekdays and weekends
 
SELECT
    CASE
        WHEN DAYOFWEEK(BookingDate) IN (2, 3, 4, 5, 6) THEN 'Weekday'
        WHEN DAYOFWEEK(BookingDate) IN (1, 7) THEN 'Weekend'
    END AS DayType,
    SUM(TotalPrice) AS TotalRevenue
FROM
    MovieBookings
GROUP BY
    CASE
        WHEN DAYOFWEEK(BookingDate) IN (2, 3, 4, 5, 6) THEN 'Weekday'
        WHEN DAYOFWEEK(BookingDate) IN (1, 7) THEN 'Weekend'
    END;


-- 10. Query to dispaly the total revenue for every day 

SELECT
    DAYNAME(BookingDate) AS DayOfWeek,
    SUM(TotalPrice) AS TotalRevenue
FROM
    MovieBookings
GROUP BY
    DAYNAME(BookingDate);


