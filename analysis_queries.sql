-- SQL Queries for Analyzing Procurement Spend Data

-- Total Spend by Supplier
SELECT supplier_id, SUM(spend) AS total_spend
FROM procurement_data
GROUP BY supplier_id
ORDER BY total_spend DESC;

-- Category Analysis
SELECT category, SUM(spend) AS total_spend
FROM procurement_data
GROUP BY category
ORDER BY total_spend DESC;

-- Delivery Time Analysis
SELECT delivery_time, COUNT(*) AS count_orders,
       AVG(days_delayed) AS avg_days_delayed
FROM orders
GROUP BY delivery_time;

-- Department Spending Patterns
SELECT department_id, SUM(spend) AS total_spend
FROM procurement_data
GROUP BY department_id
ORDER BY total_spend DESC;