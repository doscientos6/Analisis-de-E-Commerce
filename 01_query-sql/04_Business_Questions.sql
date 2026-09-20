--4. REALIZAMOS PREGUNTAS DE NEGOCIO Y LAS RESPONDEMOS PARA PODER REALIZAR UN ANÁLISIS DEL DATASET
--A. VENTAS POR PAÍS
SELECT
  country AS pais,
  SUM(quantity * unit_price) AS ventas_totales
FROM ecommerce_transactions
WHERE invoice_no NOT LIKE 'C%'
GROUP BY country
ORDER BY ventas_totales DESC;

--B. CANTIDAD DE CLIENTES RECURRENTES.
WITH compras_por_cliente AS (
SELECT 
    customer_id,
    COUNT(DISTINCT invoice_no) AS cantidad_facturas
FROM ecommerce_transactions
WHERE customer_id IS NOT NULL AND invoice_no NOT LIKE 'C%'
GROUP BY customer_id)

SELECT COUNT(*) AS clientes_recurrentes
FROM compras_por_cliente
WHERE cantidad_facturas > 1;

--C. PROMEDIO DE CANTIDAD DE PRODUCTOS COMPRADOS POR CLIENTE.
WITH productos_por_cliente AS (
  SELECT
    customer_id,
    SUM(quantity) AS total_unidades
  FROM ecommerce_transactions
  WHERE customer_id IS NOT NULL AND invoice_no NOT LIKE 'C%'
  GROUP BY customer_id)

SELECT
  ROUND(AVG(total_unidades), 2) AS unidades_promedio_por_cliente
FROM productos_por_cliente;

--D. VENTAS POR MES DEL AÑO.
WITH ventas_por_mes AS (
  SELECT 
     EXTRACT(MONTH FROM invoice_date) AS mes_del_año, 
    SUM(quantity * unit_price) AS ventas_totales
  FROM ecommerce_transactions
  WHERE invoice_no NOT LIKE 'C%'
  GROUP BY mes_del_año)

SELECT 
  mes_del_año,
  ventas_totales
FROM ventas_por_mes
ORDER BY mes_del_año;

--E. LOS DIEZ PRODUCTOS MÁS VENDIDOS DURANTE EL AÑO.
SELECT
  stock_code,
  description,
  SUM(quantity) AS unidades_vendidas
FROM ecommerce_transactions
WHERE invoice_no NOT LIKE 'C%'
GROUP BY stock_code, description
ORDER BY unidades_vendidas DESC
LIMIT 10;
