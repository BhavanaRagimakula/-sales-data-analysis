-- Top selling products
SELECT product_name, SUM(quantity) AS total_sales
FROM sales
GROUP BY product_name
ORDER BY total_sales DESC;

-- Monthly revenue
SELECT MONTH(purchase_date) AS month, SUM(price * quantity) AS revenue
FROM sales
GROUP BY month
ORDER BY month;
