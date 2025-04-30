SELECT 
    strftime('%Y', order_date) AS order_year,
    strftime('%m', order_date) AS order_month,
    SUM(sales) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM cleaned_sales_data
WHERE strftime('%Y', order_date) = '2015'
GROUP BY order_year, order_month
ORDER BY order_month;


SELECT 
    strftime('%Y', order_date) AS order_year,
    strftime('%m', order_date) AS order_month,
    SUM(sales) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM cleaned_sales_data
WHERE strftime('%Y', order_date) = '2016'
GROUP BY order_year, order_month
ORDER BY order_month;


SELECT 
    strftime('%Y', order_date) AS order_year,
    strftime('%m', order_date) AS order_month,
    SUM(sales) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM cleaned_sales_data
WHERE strftime('%Y', order_date) = '2017'
GROUP BY order_year, order_month
ORDER BY order_month;

SELECT 
    strftime('%Y', order_date) AS order_year,
    strftime('%m', order_date) AS order_month,
    SUM(sales) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM cleaned_sales_data
WHERE strftime('%Y', order_date) BETWEEN '2015' AND '2018'
GROUP BY order_year, order_month
ORDER BY order_year, order_month;
