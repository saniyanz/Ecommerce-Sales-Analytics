SELECT
    YEAR(STR_TO_DATE(order_date, '%d-%m-%Y')) AS year,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM superstore
GROUP BY year
ORDER BY year;