CREATE DATABASE Online_sales;

USE Online_sales;

SELECT
    EXTRACT(YEAR FROM `Date`) AS Order_Year,
    EXTRACT(MONTH FROM `Date`) AS Order_Month,
    SUM(`Total Revenue`) AS Total_Revenue,
    COUNT(DISTINCT `Transaction ID`) AS Total_Volume
FROM 
    `online sales data`
GROUP BY
    EXTRACT(YEAR FROM `Date`),
    EXTRACT(MONTH FROM `Date`)
ORDER BY
    Order_Year,
    Order_Month;

SELECT 
    EXTRACT(YEAR FROM STR_TO_DATE(`Date`, '%Y-%m-%d')) AS Order_Year,
    EXTRACT(MONTH FROM STR_TO_DATE(`Date`, '%Y-%m-%d')) AS Order_Month,
    SUM(`Total Revenue`) AS Total_Revenue,
    COUNT(DISTINCT `Transaction ID`) AS Total_Volume
FROM 
    `online sales data`
WHERE 
    EXTRACT(YEAR FROM STR_TO_DATE(`Date`, '%Y-%m-%d')) = 2024
GROUP BY
    Order_Year, Order_Month
ORDER BY 
    Order_Year DESC, 
    Order_Month DESC
LIMIT 3;