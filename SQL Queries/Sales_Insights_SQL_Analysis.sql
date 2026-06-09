# Total Revenue 
Select sum(sales_amount) As Total_Revenue From transactions;

# Top 10 Customers by Revenue
SELECT customer_code, SUM(sales_amount) AS Revenue
FROM transactions
GROUP BY customer_code
ORDER BY Revenue DESC
LIMIT 10;

# Revenue by Market
Select m.markets_name, SUM(t.sales_amount) AS Revenue 
From transactions t join markets m
ON t.market_code = m.markets_code
GROUP BY m.markets_name
ORDER BY Revenue DESC;

# Negative Profit Transactions
SELECT *
FROM transactions
WHERE profit_margin < 0;

# Revenue by Year
SELECT d.year, SUM(t.sales_amount) AS Revenue
FROM transactions t JOIN date d
ON t.order_date = d.date
GROUP BY d.year;

