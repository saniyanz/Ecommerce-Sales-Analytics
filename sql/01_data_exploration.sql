-- Total number of rows
SELECT COUNT(*) AS total_rows
FROM superstore;

-- Total number of columns

-- Unique Order IDs
SELECT COUNT(DISTINCT order_id) AS total_orders
FROM superstore;

-- Unique Customers
SELECT COUNT(DISTINCT customer_id) AS total_customers
FROM superstore;

-- Date range
SELECT
    MIN(STR_TO_DATE(order_date, '%d-%m-%Y')) AS min_order_date,
    MAX(STR_TO_DATE(order_date, '%d-%m-%Y')) AS max_order_date
FROM superstore;

-- Unique Regions
SELECT DISTINCT region
FROM superstore;

-- Unique Categories
SELECT DISTINCT category
FROM superstore;

-- Unique Segments
SELECT DISTINCT segment
FROM superstore;

-- Check for duplicate Order IDs
SELECT
    order_id,
    COUNT(*) AS occurrence_count
FROM superstore
GROUP BY order_id
HAVING COUNT(*) > 1
ORDER BY occurrence_count DESC;