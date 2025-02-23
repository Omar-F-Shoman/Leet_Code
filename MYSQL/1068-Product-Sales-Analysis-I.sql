# Write your MySQL query statement below
SELECT d.product_name, year, price
FROM sales AS s
LEFT JOIN product AS d
ON s.product_id = d.product_id;