
--A. Ventas por país.
SELECT
  country AS pais,
  SUM(quantity * unit_price) AS ventas_totales
FROM ecommerce_transactions
WHERE invoice_no NOT LIKE 'C%'
GROUP BY country
ORDER BY ventas_totales DESC;

--B. Cantidad de clientes recurrentes
WITH compras_por_cliente AS(
SELECT 
    customer_id,
    COUNT(DISTINCT invoice_no) AS cantidad_facturas
FROM ecommerce_transactions
WHERE customer_id IS NOT NULL AND invoice_no NOT LIKE 'C%'
GROUP BY customer_id)

SELECT 
  customer_id,
  cantidad_facturas
FROM compras_por_cliente
WHERE cantidad_facturas > 1;

--C.Promedio de cantidad productos comprados por cliente

--D. Promedio de ventas por mes del año
  
--E. Productos con mayor cantidad de unidades vendidas durante el año
