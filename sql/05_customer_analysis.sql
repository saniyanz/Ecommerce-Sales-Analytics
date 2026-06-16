-- Top customers by sales
SELECT
    customer_name,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM superstore
GROUP BY customer_name
ORDER BY total_sales DESC
LIMIT 10;

-- Top customers by profit
SELECT
    customer_name,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(SUM(sales), 2) AS total_sales
FROM superstore
GROUP BY customer_name
ORDER BY total_profit DESC
LIMIT 10;

-- Analyze Sean Miller purchases
SELECT
    category,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM superstore
WHERE customer_name = 'Sean Miller'
GROUP BY category
ORDER BY total_sales DESC;