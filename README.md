# Sales Trend Analysis

## Project Overview

This project focuses on analyzing monthly sales trends using a SQL-based approach on the `superstore_orders` dataset. The main goal is to understand how revenue and order volume change over time by aggregating sales data on a monthly basis.

## Dataset Description

The dataset `superstore_orders` contains detailed information about sales orders including:

- Order details (`Order ID`, `Order Date`, `Ship Date`)
- Customer information (`Customer ID`, `Customer Name`, `Segment`, `Region`, etc.)
- Product details (`Product ID`, `Category`, `Sub-Category`, `Product Name`)
- Sales metrics (`Sales`, `Quantity`, `Discount`, `Profit`)

## What I Did

1. **Created the Database and Table:**  
   Defined the `superstore_orders` table schema in MySQL to hold the dataset with appropriate data types.

2. **Imported Data:**  
   Loaded the dataset into the MySQL database ensuring proper handling of date formats and numeric fields.

3. **Built SQL Queries for Sales Trend Analysis:**  
   - Extracted the year and month from `Order Date` using `YEAR()` and `MONTH()` functions.
   - Calculated total monthly revenue using `SUM(Sales)`.
   - Counted unique monthly orders using `COUNT(DISTINCT Order ID)`.
   - Grouped results by year and month to aggregate monthly data.
   - Ordered results chronologically for better trend visualization.
   - Added optional filtering for specific time periods using `WHERE` clause.

4. **Validated Results:**  
   Executed the query to generate monthly sales and order volume trends, which can be used to identify seasonal patterns and business performance over time.

## How to Use

- Run the provided SQL script on your MySQL server after importing the data.
- Modify the date filters as needed to analyze different time ranges.
- Export or visualize the results using your preferred BI tools for deeper insights.

## Future Enhancements

- Add more granular analyses (weekly, daily trends).
- Incorporate product or region-wise sales breakdowns.
- Build dashboards for interactive visualization.

---

Feel free to reach out for any questions or suggestions!

