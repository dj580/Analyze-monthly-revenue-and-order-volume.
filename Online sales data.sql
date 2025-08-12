CREATE DATABASE superstore_db;
USE superstore_db;
CREATE TABLE superstore_orders (
    `Row ID` INT,
    `Order ID` VARCHAR(20),
    `Order Date` DATE,
    `Ship Date` DATE,
    `Ship Mode` VARCHAR(50),
    `Customer ID` VARCHAR(20),
    `Customer Name` VARCHAR(100),
    `Segment` VARCHAR(50),
    `Country` VARCHAR(50),
    `City` VARCHAR(50),
    `State` VARCHAR(50),
    `Postal Code` VARCHAR(20),
    `Region` VARCHAR(50),
    `Product ID` VARCHAR(50),
    `Category` VARCHAR(50),
    `Sub-Category` VARCHAR(50),
    `Product Name` VARCHAR(255),
    `Sales` DECIMAL(10,2),
    `Quantity` INT,
    `Discount` DECIMAL(5,2),
    `Profit` DECIMAL(10,2)
);



-- Display all rows and columns from superstore_orders table
SELECT * FROM superstore_orders;

-- Objective: Analyze monthly revenue and order volume from superstore_orders table

SELECT 
    YEAR(`Order Date`) AS order_year,
    MONTH(`Order Date`) AS order_month,
    SUM(`Sales`) AS total_revenue,
    COUNT(DISTINCT `Order ID`) AS order_volume
FROM 
    superstore_orders
GROUP BY 
    order_year, order_month
ORDER BY 
    order_year, order_month;

---- Full query example with date range filter:
SELECT 
    YEAR(`Order Date`) AS order_year,
    MONTH(`Order Date`) AS order_month,
    SUM(`Sales`) AS total_revenue,
    COUNT(DISTINCT `Order ID`) AS order_volume
FROM 
    superstore_orders
WHERE 
    `Order Date` BETWEEN '2014-01-01' AND '2016-06-30'
GROUP BY 
    order_year, order_month
ORDER BY 
    order_year, order_month;