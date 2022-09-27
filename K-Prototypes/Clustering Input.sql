 SELECT c.customer_id, c.customer_name, c.gender, c.age, c.state, SUM(s.quantity) AS quantity, SUM(s.total_price) AS total_price 
 FROM sales.customers c 
 LEFT OUTER JOIN sales.orders o ON o.customer_id = c.customer_id
 LEFT OUTER JOIN sales.sales s ON o.order_id= s.order_id
 GROUP BY c.customer_id
 HAVING SUM(s.total_price) IS NOT NULL
 ;