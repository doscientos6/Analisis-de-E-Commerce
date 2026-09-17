
--
SELECT 
   invoice_no, 
   stock_code,
   quantity,
   invoice_date,
   customer_id,
   COUNT(*)
FROM ecommerce_transactions
GROUP BY invoice_no, stock_code, quantity, invoice_date, customer_id
HAVING COUNT(*) > 1;

--

SELECT 
   venta_id,
   invoice_no, 
   stock_code, 
   country
FROM ecommerce_transactions
WHERE invoice_no != TRIM(invoice_no)
   OR stock_code != TRIM(stock_code)
   OR country != TRIM(country);

--

SELECT venta_id, description
FROM ecommerce_transactions
WHERE description ~ '[^\x20-\x7E\xC0-\xFF]';

--

SELECT 
   *
FROM ecommerce_transactions
WHERE description IS NULL;

SELECT 
   *
FROM ecommerce_transactions
