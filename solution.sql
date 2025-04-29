
-- Task 6: Monthly Revenue and Order Volume Analysis

-- SQL Script for PostgreSQL / MySQL / SQLite

SELECT 
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT product_id) AS total_orders
FROM 
    online_sales
GROUP BY 
    order_year, order_month
ORDER BY 
    order_year, order_month;
