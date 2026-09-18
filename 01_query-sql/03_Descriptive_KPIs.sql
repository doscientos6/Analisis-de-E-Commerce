
SELECT SUM(quantity) AS total_unidades_vendidas
FROM ecommerce_transactions
WHERE invoice_no NOT LIKE 'C%';

SELECT COUNT(DISTINCT invoice_no) AS facturas_canceladas
FROM ecommerce_transactions
WHERE invoice_no LIKE 'C%';

SELECT 
    ROUND(100.0 * COUNT(DISTINCT invoice_no) FILTER (WHERE invoice_no LIKE 'C%') 
    / COUNT(DISTINCT invoice_no), 2) AS porcentaje_canceladas
FROM ecommerce_transactions;

SELECT SUM(quantity * unit_price) AS ventas_totales_netas
FROM ecommerce_transactions
WHERE invoice_no NOT LIKE 'C%';
