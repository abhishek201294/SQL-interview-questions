CREATE DATABASE superstore1;

SHOW databases;

USE superstore1;

DESCRIBE market;
DESCRIBE customer; 
DESCRIBE category;
DESCRIBE orders;
DESCRIBE shipping;

SET sql_safe_updates = 0

UPDATE orders 
SET Order_Date = DATE_FORMAT(STR_TO_DATE(Order_Date, '%d-%m-%Y'), '%Y-%m-%d')
WHERE STR_TO_DATE(Order_Date, '%d-%m-%Y') IS NOT NULL;


ALTER TABLE orders
MODIFY Order_Date DATE;


ALTER TABLE shipping
MODIFY Ship_Date DATE;