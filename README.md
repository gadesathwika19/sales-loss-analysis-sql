# sales-loss-analysis-sql
SQL project analyzing sales losses and profitability using PostgreSQL
# Sales Loss Analysis using SQL (PostgreSQL)

## Overview
This project analyzes sales data to identify loss-making categories,
rank performance, and apply Pareto (80/20) analysis to prioritize actions.

## Dataset
The dataset contains order-level sales with:
- order_date
- region
- category
- sales
- profit

## Key Questions Answered
1. Which categories are loss-making?
2. Which category causes the highest loss?
3. How much does each category contribute to total loss?
4. Is the loss concentrated (Pareto 80/20)?

## SQL Techniques Used
- GROUP BY & aggregation
- Filtering with WHERE and HAVING
- Window functions (RANK, cumulative SUM)
- Pareto (80/20) analysis

## Key Insight
Losses are concentrated in the Furniture category, contributing 100% of total loss
in the current dataset, indicating it should be prioritized for corrective action.
## Key Insights
- Furniture is the only loss-making category and contributes 100% of total loss.
- Losses are highly concentrated rather than spread across categories.
- Ranking and Pareto analysis show that fixing Furniture would eliminate overall losses.
