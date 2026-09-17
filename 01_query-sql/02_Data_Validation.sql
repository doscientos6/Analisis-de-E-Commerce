--2. VALIDAMOS QUE LOS DATOS CARGADOS ESTÉN CORRECTOS.

--A. VERIFICAMOS QUE LA NO HAYAN FILAS DUPLICADAS QUE PUEDAN GENERAR INCONSISTENCIAS.
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

--B. VERIFICAMOS QUE NO HAYA UN ERROR DE TIPEO QUE PUEDA GENERAR ESPACIOS NO DESEADOS.
SELECT 
   venta_id,
   invoice_no, 
   stock_code, 
   country
FROM ecommerce_transactions
WHERE invoice_no != TRIM(invoice_no)
   OR stock_code != TRIM(stock_code)
   OR country != TRIM(country);
-- # EN CASO DE HALLAR SE REALIZA UN UPDATE DE LAS COLUMNAS PARA QUE ESTÉN LOS VALORES CORRECTAMENTE.
UPDATE ecommerce_transactions
SET invoice_no = TRIM(invoice_no),
    stock_code = TRIM(stock_code),
    country = TRIM(country)
WHERE invoice_no != TRIM(invoice_no)
   OR stock_code != TRIM(stock_code)
   OR country != TRIM(country);

--C. VERIFICAMOS LA AUSENCIA DE CARÁCTERES QUE PUEDAN GENERAR RUIDO. SU ALCANCE ES ESPECÍFICAMENTE DETECTAR CORRUPCIÓN DE CODIFICACIÓN, NO CUALQUIER TIPO DE DATO INVÁLIDO.

SELECT venta_id, description
FROM ecommerce_transactions
WHERE description ~ '[^\x20-\x7E\xC0-\xFF]'; 
--# SI SE HAYAN VALORES INVÁLIDOS LOS REEMPLAZAMOS POR UN ESPACIO.
UPDATE ecommerce_transactions
SET description = regexp_replace(description, '[^\x20-\x7E\xC0-\xFF]', ' ', 'g')
WHERE description ~ '[^\x20-\x7E\xC0-\xFF]';

--D. VERIFICAMOS QUE NO HAYAN VALORES NULOS.

--1. REVISAMOS QUE NO HAYAN VALORES NULOS EN LA COLUMNA "customer_id".
SELECT COUNT(*) AS total_null_customer_id
FROM ecommerce_transactions
WHERE customer_id IS NULL;
-- # EN CASO DE HALLAR VALORRES NULOS EN LA COLUMNA "customer_id".
UPDATE customer_id
SET customer_id = "SIN ID"
WHERE customer_id IS NULL;

--2. VERIFICAMOS QUE LA COLUMNA "description" NO TENGA NI VALORES NULOS NI FILAS EN DONDE SE PRESENTEN ESPACIOS QUE NO SE CONSIDEREN COMO NULLS PERO IMPIDAN UN ANÁLISIS.
SELECT COUNT(*) AS total_description_faltante
FROM ecommerce_transactions
WHERE description IS NULL OR TRIM(description) = '';
-- # EN CASO DE HALLAR VALORRES NULOS O FILAS QUE SEAN ÚNICAMENTE UN ESPACIO.
UPDATE ecommerce_transactions
SET description = 'SIN DESCRIPCIÓN'
WHERE description IS NULL OR TRIM(description) = '';
