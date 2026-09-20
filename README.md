# 🛒 Análisis de E-Commerce (Kaggle Dataset)

Este proyecto es un análisis de transacciones de e-commerce basado en el dataset de Kaggle "E-Commerce Analysis". El objetivo principal fue identificar patrones de venta, comportamiento de clientes y productos clave, y traducir los datos en insights accionables para la toma de decisiones.

## 📂 Dataset

- **Fuente:** https://www.kaggle.com/datasets/thedevastator/online-retail-transaction-data

---

## Tecnologías y Herramientas

- **SQL (PostgreSQL):** Extracción, modelado, validación de datos y consultas exploratorias iniciales.
- **Power BI & DAX:** Modelado relacional, cálculo de métricas avanzadas (Medidas DAX) y diseño del dashboard interactivo.
- **Storytelling de Negocio:** Traducción de métricas técnicas a insights accionables para la toma de decisiones.

---

## 📁 Fases del Proyecto

### Fase 1: Extracción y Preparación (SQL)

Antes de analizar los datos, se aseguró la integridad de la carga y se construyó una base sólida para el análisis. Podés revisar el código completo en la carpeta `01_query-sql/`.

- **`01_Create_Table.sql`:** Creación de la estructura de la tabla (DDL) y conversión de la columna `invoice_date` de `VARCHAR` a `TIMESTAMP`, debido a que el formato original no coincide con el orden que PostgreSQL interpreta por defecto.
- **`02_Data_Validation.sql`:** Auditoría de calidad de datos — detección de filas duplicadas, espacios innecesarios en campos de texto, caracteres corruptos en `description`, y valores nulos o vacíos en las columnas donde es posible que existan (`customer_id`, `description`).
- **`03_Descriptive_KPIs.sql`:** Cálculo de indicadores generales para tener una primera visión del dataset: cantidad total de ventas (unidades), cantidad de ventas canceladas, porcentaje de ventas canceladas y ventas totales netas.
- **`04_Business_Questions.sql`:** Preguntas de negocio para entender el comportamiento de ventas, clientes y productos:
  - Ventas por país.
  - Cantidad de clientes recurrentes.
  - Promedio de cantidad de productos comprados por cliente.
  - Ventas por mes del año.
  - Los diez productos más vendidos durante el año.

### Fase 2: Visualización y Dashboard (Power BI)

Se desarrolló un reporte interactivo enfocado en la experiencia del usuario y la claridad visual. <!-- Completar una vez armado el dashboard -->

**Link para descargar el dashboard .pbix**

<!-- Pegar acá el link de descarga -->

### Fase 3: Análisis e Insights

> ⚠️ _Sección en construcción — se completará con capturas del dashboard y el análisis correspondiente a cada pregunta de negocio._

**Ventas por país**

<!-- Insertar captura del dashboard -->

_Completar con el análisis en base a lo observado en el dashboard._

**Clientes recurrentes**

<!-- Insertar captura del dashboard -->

_Completar con el análisis en base a lo observado en el dashboard._

**Promedio de productos por cliente**

<!-- Insertar captura del dashboard -->

_Completar con el análisis en base a lo observado en el dashboard._

**Estacionalidad de ventas**

<!-- Insertar captura del dashboard -->

_Completar con el análisis en base a lo observado en el dashboard._

**Top 10 productos más vendidos**

<!-- Insertar captura del dashboard -->

_Completar con el análisis en base a lo observado en el dashboard._

---

## 📬 Contacto
https://www.linkedin.com/in/lautaro-vila-gallardo-5a8b2b405/
