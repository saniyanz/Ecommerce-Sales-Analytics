-- Impact of discount on profitability
SELECT
    ROUND(discount * 100, 0) AS discount_pct,
    ROUND(AVG(profit), 2) AS avg_profit,
    COUNT(*) AS total_orders
FROM superstore
GROUP BY discount_pct
ORDER BY discount_pct;

-- Discount analysis by sub-category
SELECT
    sub_category,
    ROUND(AVG(discount) * 100, 2) AS avg_discount_pct,
    ROUND(SUM(profit), 2) AS total_profit
FROM superstore
GROUP BY sub_category
ORDER BY avg_discount_pct DESC;