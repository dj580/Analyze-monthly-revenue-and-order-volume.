CREATE DATABASE online_sales;
USE online_sales;
CREATE TABLE orders (
    row_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    order_date DATE,
    product_id INT,
    quantity INT,
    amount DECIMAL(10, 2)
);
select * from orders ;
INSERT INTO orders (order_id, order_date, product_id, quantity, amount)
VALUES
(101, '2023-01-15', 501, 2, 199.99),
(102, '2023-02-20', 502, 1, 149.50),
(103, '2023-03-10', 503, 4, 359.96),
(104, '2023-04-05', 504, 3, 269.97),
(105, '2023-05-18', 505, 1, 89.00),
(106, '2024-01-10', 506, 5, 499.95),
(107, '2024-02-25', 507, 2, 179.98),
(108, '2024-03-30', 508, 1, 59.99),
(109, '2024-04-15', 509, 6, 539.94),
(110, '2024-05-22', 510, 3, 269.97),
(111, '2025-01-12', 511, 2, 199.98),
(112, '2025-02-28', 512, 4, 399.96),
(113, '2025-03-16', 513, 1, 99.99),
(114, '2025-04-20', 514, 7, 699.93),
(115, '2025-05-25', 515, 2, 179.98),
(116, '2026-01-11', 516, 3, 299.97),
(117, '2026-02-14', 517, 5, 499.95),
(118, '2026-03-22', 518, 1, 59.99),
(119, '2026-04-27', 519, 4, 359.96),
(120, '2026-05-30', 520, 2, 119.98),
(121, '2027-01-08', 521, 3, 269.97),
(122, '2027-02-18', 522, 1, 89.99),
(123, '2027-03-25', 523, 6, 539.94),
(124, '2027-04-29', 524, 2, 179.98),
(125, '2027-05-19', 525, 4, 359.96),
(126, '2028-01-10', 526, 3, 299.97),
(127, '2028-02-21', 527, 5, 499.95),
(128, '2028-03-30', 528, 2, 119.98),
(129, '2028-04-12', 529, 1, 59.99),
(130, '2028-05-25', 530, 4, 359.96);
--- Extract Year and Month from order_date
SELECT
  EXTRACT(YEAR FROM order_date) AS year,
  EXTRACT(MONTH FROM order_date) AS month
FROM orders;

--- Calculate Monthly Revenue Using SUM()
SELECT
  EXTRACT(YEAR FROM order_date) AS year,
  EXTRACT(MONTH FROM order_date) AS month,
  SUM(amount) AS total_revenue
FROM orders
GROUP BY year, month;
--- Calculate Monthly Order Volume Using COUNT(DISTINCT order_id)
SELECT
  EXTRACT(YEAR FROM order_date) AS year,
  EXTRACT(MONTH FROM order_date) AS month,
  COUNT(DISTINCT order_id) AS order_volume
FROM orders
GROUP BY year, month;
--- Combine Revenue and Order Volume in One Query
SELECT
  EXTRACT(YEAR FROM order_date) AS year,
  EXTRACT(MONTH FROM order_date) AS month,
  SUM(amount) AS total_revenue,
  COUNT(DISTINCT order_id) AS order_volume
FROM orders
GROUP BY year, month
ORDER BY year, month;
--- Limit Results to a Specific Year or Date Range
SELECT
  EXTRACT(YEAR FROM order_date) AS year,
  EXTRACT(MONTH FROM order_date) AS month,
  SUM(amount) AS total_revenue,
  COUNT(DISTINCT order_id) AS order_volume
FROM orders
WHERE EXTRACT(YEAR FROM order_date) = 2025
GROUP BY year, month
ORDER BY year, month;
