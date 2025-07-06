SELECT * FROM online_sales.`online sales data`;
SELECT 
  EXTRACT(YEAR FROM STR_TO_DATE(Date, '%Y-%m-%d')) AS year,
  EXTRACT(MONTH FROM STR_TO_DATE(Date, '%Y-%m-%d')) AS month,
  SUM('Total Revenue') AS total_revenue,
  COUNT(DISTINCT 'Transaction ID') AS order_volume
FROM `online sales data`
GROUP BY year, month
ORDER BY year, month;
SELECT `Total Revenue` FROM `online sales data` ;
