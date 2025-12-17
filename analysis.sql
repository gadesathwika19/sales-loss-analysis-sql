-- Sales Loss Analysis
-- Objective: Identify loss-making categories and their contribution to total loss

-- 1. Total profit / loss by category
SELECT
    category,
    SUM(profit) AS total_profit
FROM sales
GROUP BY category
ORDER BY total_profit;
-- 2. Loss-making categories
SELECT
    category,
    SUM(profit) AS total_loss
FROM sales
WHERE profit < 0
GROUP BY category
ORDER BY total_loss;
-- 3. Rank categories by total profit
SELECT
    category,
    SUM(profit) AS total_profit,
    RANK() OVER (ORDER BY SUM(profit)) AS profit_rank
FROM sales
GROUP BY category;
-- 4. Percentage contribution to total loss
SELECT
    category,
    SUM(profit) AS total_loss,
    ROUND(
        SUM(profit) / SUM(SUM(profit)) OVER () * 100,
        2
    ) AS loss_percentage
FROM sales
WHERE profit < 0
GROUP BY category
ORDER BY total_loss;
-- 5. Cumulative loss percentage (Pareto 80/20)
SELECT
    category,
    SUM(profit) AS total_loss,
    ROUND(
        SUM(
            SUM(profit)
        ) OVER (
            ORDER BY SUM(profit)
            ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
        ) / SUM(SUM(profit)) OVER () * 100,
        2
    ) AS cumulative_loss_percentage
FROM sales
WHERE profit < 0
GROUP BY category
ORDER BY total_loss;
