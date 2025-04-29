
-- Creating table for online_sales dataset
CREATE TABLE online_sales (
    order_date DATE,
    amount DECIMAL(10, 2),
    product_id INT
);

-- Insert sample data (optional for testing)
INSERT INTO online_sales (order_date, amount, product_id) VALUES
('2024-01-15', 100.50, 1),
('2024-01-20', 200.00, 2),
('2024-02-10', 150.75, 3);


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
