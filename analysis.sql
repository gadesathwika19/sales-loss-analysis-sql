-- Sales Loss Analysis
-- Objective: Identify loss-making categories and their contribution to total loss

-- 1. Total profit / loss by category
SELECT
    category,
    SUM(profit) AS total_profit
FROM sales
GROUP BY category
ORDER BY total_profit;
