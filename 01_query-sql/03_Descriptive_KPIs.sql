--3. REALIZAMOS KPIs DESCRIPTIVOS QUE NOS AYUDEN A TENER UN MEJOR ENTENDIMIENTO SOBRE EL DATASET QUE VAMOS A UTILIZAR.
--A.CANTIDAD TOTAL DE VENTAS (UNIDADES) EXCLUYENDO CANCELADAS.
SELECT SUM(quantity) AS total_unidades_vendidas
FROM ecommerce_transactions
WHERE invoice_no NOT LIKE 'C%';

--B. CANTIDAD DE VENTAS CANCELADAS.
SELECT COUNT(DISTINCT invoice_no) AS facturas_canceladas
FROM ecommerce_transactions
WHERE invoice_no LIKE 'C%';

--C. PORCENTAJE QUE REPRESENTAN LAS CANCELADAS SOBRE EL TOTAL DE VENTAS.
SELECT 
    ROUND(100.0 * COUNT(DISTINCT invoice_no) FILTER (WHERE invoice_no LIKE 'C%') 
    / COUNT(DISTINCT invoice_no), 2) AS porcentaje_canceladas
FROM ecommerce_transactions;

--D. VENTAS TOTALES NETAS.
SELECT SUM(quantity * unit_price) AS ventas_totales_netas
FROM ecommerce_transactions
WHERE invoice_no NOT LIKE 'C%';
