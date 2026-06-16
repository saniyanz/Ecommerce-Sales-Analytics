-- Total Sales
SELECT ROUND(SUM(sales), 2) AS total_sales
FROM superstore;

-- Total Profit
SELECT ROUND(SUM(profit), 2) AS total_profit
FROM superstore;

-- Total Orders
SELECT COUNT(DISTINCT order_id) AS total_orders
FROM superstore;

-- Total Customers
SELECT COUNT(DISTINCT customer_id) AS total_customers
FROM superstore;

-- Overall Profit Margin
SELECT ROUND((SUM(profit) / SUM(sales)) * 100, 2) AS profit_margin
FROM superstore;