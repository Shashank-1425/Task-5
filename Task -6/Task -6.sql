USE sales;
DESCRIBE `online sales data`;

-- To check if there is any null values in the dataset
SELECT
  SUM(CASE WHEN `Transaction ID` IS NULL THEN 1 ELSE 0 END) AS null_transaction_id,
  SUM(CASE WHEN `Date` IS NULL THEN 1 ELSE 0 END) AS null_date,
  SUM(CASE WHEN `Product Category` IS NULL THEN 1 ELSE 0 END) AS null_product_category,
  SUM(CASE WHEN `Product Name` IS NULL THEN 1 ELSE 0 END) AS null_product_name,
  SUM(CASE WHEN `Units Sold` IS NULL THEN 1 ELSE 0 END) AS null_units_sold,
  SUM(CASE WHEN `Unit Price` IS NULL THEN 1 ELSE 0 END) AS null_unit_price,
  SUM(CASE WHEN `Total Revenue` IS NULL THEN 1 ELSE 0 END) AS null_total_revenue,
  SUM(CASE WHEN `Region` IS NULL THEN 1 ELSE 0 END) AS null_region,
  SUM(CASE WHEN `Payment Method` IS NULL THEN 1 ELSE 0 END) AS null_payment_method
FROM
  `online sales data`;

-- Performing Query and finding result
SELECT
  EXTRACT(YEAR FROM STR_TO_DATE(`Date`, '%Y-%m-%d')) AS order_year,
  EXTRACT(MONTH FROM STR_TO_DATE(`Date`, '%Y-%m-%d')) AS order_month,
  SUM(`Total Revenue`) AS monthly_revenue,
  COUNT(DISTINCT `Transaction ID`) AS monthly_order_volume
FROM
  `online sales data`
WHERE
  `Date` IS NOT NULL
GROUP BY
  EXTRACT(YEAR FROM STR_TO_DATE(`Date`, '%Y-%m-%d')),
  EXTRACT(MONTH FROM STR_TO_DATE(`Date`, '%Y-%m-%d'))
ORDER BY
  order_year,
  order_month;
