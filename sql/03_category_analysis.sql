-- Category performance
SELECT
    category,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND((SUM(profit) / SUM(sales)) * 100, 2) AS profit_margin
FROM superstore
GROUP BY category
ORDER BY total_profit DESC;

-- Sub-category performance
SELECT
    sub_category,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(AVG(discount) * 100, 2) AS avg_discount_pct,
    ROUND((SUM(profit) / SUM(sales)) * 100, 2) AS profit_margin
FROM superstore
GROUP BY sub_category
ORDER BY total_profit DESC;