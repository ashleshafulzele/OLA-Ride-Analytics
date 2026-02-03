CREATE DATABASE OLA;
USE OLA;
 
SHOW TABLES; 

SELECT * FROM bookings;
 
-- 1)  retrive all sucessful Bookings
CREATE VIEW Sucessful_Bookings AS
SELECT * FROM bookings
WHERE Booking_Status='Sucess';

SELECT * FROM Sucessful_Bookings ;

-- 2) avg of distance for each vehicle-- 
CREATE VIEW ride_dist_for_each_vehicle AS
SELECT Vehicle_Type , AVG(Ride_Distance) AS 
avg_distance FROM bookings 
GROUP BY Vehicle_Type;

SELECT * FROM ride_dist_for_each_vehicle ;

--  3) No of ride canceled by Coustmer

CREATE VIEW ride_canceled_by_Coustmer AS
SELECT COUNT(*) FROM bookings
WHERE Booking_Status='Canceled by Coustmer';

SELECT * FROM ride_canceled_by_Coustmer;

--  4) Top 5 coustmer booked highest number of rides

CREATE VIEW  Top_5_customer AS
SELECT Customer_ID , COUNT(Booking_ID) AS total_rides
FROM bookings
GROUP By Customer_ID
ORDER By total_rides DESC LIMIT 5;

SELECT * FROM Top_5_customer;

-- 5) no of rides canceled by driver due to personal or car related issue
 
CREATE VIEW Canceled_by_driver_p_c_issue AS
SELECT COUNT(*) FROM bookings
WHERE Canceled_Rides_by_Driver='Personal and Car related issues';

 SELECT * FROM Canceled_by_driver_p_c_issue ;
 
-- 6)  man min driver rating of prime sedan

CREATE VIEW max_min_driver_rating AS
SELECT MAX(Driver_Ratings) AS max_rating,
MIN(Driver_Ratings) AS min_rating 
FROM bookings WHERE Vehicle_Type='Prime Sedan';

SELECT * FROM  max_min_driver_rating;
 
-- 7)  rides where payment done by upi

  CREATE VIEW UPI_Payment AS
  SELECT * FROM bookings
  WHERE Payment_Method='UPI';
  
SELECT * FROM  UPI_Payment;
 
-- 8) avg of customer rating per vehicle type

CREATE VIEW AVG_Cust_Rating AS
SELECT Vehicle_Type, AVG(Customer_Rating) AS avg_customer_rating
FROM bookings
GROUP By Vehicle_Type;

SELECT * FROM AVG_Cust_Rating;

-- 9) total booking of rindes completed sucessfully

CREATE VIEW total_sucessful_rides AS
SELECT SUM(Booking_Value) AS total_sucessful_ride_value
FROM bookings
WHERE Booking_Status ='sucess';

SELECT * FROM total_sucessful_rides;

-- 10) incomplete rides with reason

 CREATE VIEW Incomplete_Rides_Reason AS
 SELECT Booking_ID,Incomplete_Rides_Reason
 FROM Bookings
 WHERE Incomplete_Rides_Reason='Yes';
 
SELECT * FROM Incomplete_Rides_Reason;































































