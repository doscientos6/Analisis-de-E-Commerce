--1. CREACIÓN DE LA TABLA.
--A. 
CREATE TABLE ecommerce_transactions (
    venta_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    invoice_no VARCHAR(20) NOT NULL,
    stock_code VARCHAR(20) NOT NULL,
    description TEXT,
    quantity INT NOT NULL,
    invoice_date VARCHAR(50) NOT NULL,  
    unit_price NUMERIC(10,2) NOT NULL,
    customer_id INT,
    country VARCHAR(100) NOT NULL
);


ALTER TABLE ecommerce_transactions 
  ALTER COLUMN invoice_date TYPE TIMESTAMP 
  USING to_timestamp(invoice_date, 'MM/DD/YYYY HH24:MI');
