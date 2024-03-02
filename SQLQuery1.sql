SELECT * FROM pizza_sales

SELECT SUM(total_price) AS Total_Revenue FROM pizza_sales

SELECT(SUM(total_price)/COUNT(DISTINCT order_id))AS Avg_order_Value FROM pizza_sales

SELECT DATENAME(DW, order_date)AS order_day,COUNT(DISTINCT order_id)AS total_orders 
FROM pizza_sales
GROUP BY DATENAME(DW, order_date)

select DATENAME(MONTH, order_date)as Month_Name,COUNT(DISTINCT order_id)as Total_Orders
from pizza_sales
GROUP BY DATENAME(MONTH, order_date)
ORDER BY Total_Orders DESC

