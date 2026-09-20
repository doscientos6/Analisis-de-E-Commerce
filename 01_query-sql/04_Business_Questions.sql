
--A. Ventas por país.
SELECT
  SUM(quantity) AS ventas,
  country AS pais
FROM ecommerce_transactions
GROUP BY country

--B. Cantidad de clientes recurrentes

--C.Promedio de cantidad productos comprados por cliente

--D. Promedio de ventas por mes del año
  
--E. Productos con mayor cantidad de unidades vendidas durante el año
