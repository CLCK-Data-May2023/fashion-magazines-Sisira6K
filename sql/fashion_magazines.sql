SELECT customer_name AS Customer,PRINTF('$%.2f',sum(s.price_per_month*s.subscription_length)) AS 'Amount Due'	
FROM customers c
INNER JOIN orders o
ON c.customer_id =o.customer_id
INNER JOIN subscriptions s
ON s.subscription_id= o.subscription_id
WHERE s.description='Fashion Magazine' AND o.order_status = 'unpaid'
GROUP BY Customer