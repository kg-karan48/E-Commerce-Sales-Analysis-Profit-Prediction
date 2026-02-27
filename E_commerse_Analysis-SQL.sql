create database Ecommerse_data ;
use Ecommerse_data;


CREATE TABLE sales_data (
  order_date DATE,
  product_name VARCHAR(100),
  category VARCHAR(50),
  region VARCHAR(50),
  quantity INT,
  sales FLOAT,
  profit FLOAT
);

show tables;

Select * from sales_data;


-- check Null/missing values values
select * from sales_data 
where sales is null
or profit is null
or order_date is null;

select * from sales_data
where quantity =0;

select * from sales_data
where sales < 0;

--  total reveneu on sales
select sum(sales) as total_reveneu from sales_data;

-- Total profit
select sum(profit) as total_profit from sales_data;

-- total orders
select count(*) from sales_data;

-- average values in sales
select avg(sales) from sales_data;


-- reveneu by category
select category,
sum(sales)as total_sales
from sales_data
group by category
order by total_sales Desc;


-- profit by region'
SELECT region,
       SUM(profit) AS total_profit
FROM sales_data
GROUP BY region
ORDER BY total_profit DESC;


-- Top 5 Product By reveneu
select product_name,
sum(sales) as total_sales
from sales_data
group by product_name
order by total_sales Desc
limit 5;


-- Profit margin 
SELECT product_name,
       SUM(profit) / SUM(sales) * 100 AS profit_margin
FROM sales_data
GROUP BY product_name
ORDER BY profit_margin DESC;


-- Loss making Products
SELECT product_name,
       SUM(profit) AS total_profit
FROM sales_data
GROUP BY product_name
HAVING total_profit < 0;


-- reveneu trend by month
SELECT 
    MONTH(order_date) AS month,
    SUM(sales) AS monthly_sales
FROM sales_data
GROUP BY MONTH(order_date)
ORDER BY month;


-- Creating view , reveneu & business summary
CREATE VIEW revenue_summary AS
SELECT category,
       SUM(sales) AS total_sales,
       SUM(profit) AS total_profit
FROM sales_data
GROUP BY category;

SELECT * FROM revenue_summary;


CREATE VIEW business_summary AS
SELECT 
    category,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    SUM(quantity) AS total_quantity,
    ROUND(SUM(profit)/SUM(sales)*100,2) AS profit_margin
FROM sales_data
GROUP BY category;

select * from business_summary;


SELECT 
    MONTH(order_date) AS month,
    category,
    region,
    quantity,
    sales,
    profit,
    (profit/sales)*100 AS profit_margin
FROM sales_data
WHERE sales IS NOT NULL
AND profit IS NOT NULL
AND quantity > 0;
