# 🛒 Análisis de E-Commerce (Kaggle Dataset)

Este proyecto es un análisis de transacciones de e-commerce basado en el dataset de Kaggle "E-Commerce Analysis". El objetivo principal fue identificar patrones de venta, comportamiento de clientes y productos clave, y traducir los datos en insights accionables para la toma de decisiones.

---

## Tecnologías y Herramientas

- **SQL (PostgreSQL):** Extracción, modelado, validación de datos y consultas exploratorias iniciales.
- **Power BI & DAX:** Modelado relacional, cálculo de métricas avanzadas (Medidas DAX) y diseño del dashboard interactivo.
- **Storytelling de Negocio:** Traducción de métricas técnicas a insights accionables para la toma de decisiones.

---

## 📁 Fases del Proyecto

### Fase 1: Extracción y Preparación (SQL)

Antes de analizar los datos, se aseguró la integridad de la carga mediante consultas SQL.

- Podés revisar el código completo en el archivo `01_Create_Table.sql`.
- **Tareas realizadas:** Creación de la estructura de la tabla (DDL) y conversión de la columna `invoice_date` de `VARCHAR` a `TIMESTAMP`, debido a que el formato original no coincide con el orden que PostgreSQL interpreta por defecto.

### Fase 2: Validación de Datos (SQL)

Se auditó la calidad del dataset antes de avanzar con el análisis.

- Podés revisar el código completo en el archivo `02_Data_Validation.sql`.
- **Tareas realizadas:** Detección de filas duplicadas, espacios innecesarios en campos de texto, caracteres corruptos en `description`, y valores nulos o vacíos en las columnas donde es posible que existan (`customer_id`, `description`).

### Fase 3: KPIs Descriptivos (SQL)

Se calcularon indicadores generales para tener una primera visión del dataset antes de profundizar en preguntas de negocio específicas.

- Podés revisar el código completo en el archivo `03_Descriptive_KPIs.sql`.
- **KPIs calculados:** Cantidad total de ventas (unidades), cantidad de ventas canceladas, porcentaje de ventas canceladas y ventas totales netas.

### Fase 4: Preguntas de Negocio (SQL)

Se plantearon y respondieron preguntas de negocio concretas para entender el comportamiento de ventas, clientes y productos.

- Podés revisar el código completo en el archivo `04_Business_Questions.sql`.
- **Preguntas respondidas:**
  - Ventas por país.
  - Cantidad de clientes recurrentes.
  - Promedio de cantidad de productos comprados por cliente.
  - Ventas por mes del año.
  - Los diez productos más vendidos durante el año.

### Fase 5: Visualización y Dashboard (Power BI)

Se desarrolló un reporte interactivo enfocado en la experiencia del usuario y la claridad visual. <!-- Completar una vez armado el dashboard -->

**Link para descargar el dashboard .pbix**

<!-- Pegar acá el link de descarga -->

### Fase 6: Análisis e Insights

> ⚠️ _Sección en construcción — se completará una vez ejecutadas las queries y analizados los resultados._

- **Ventas por país:** _Completar._
- **Clientes recurrentes:** _Completar._
- **Promedio de productos por cliente:** _Completar._
- **Estacionalidad de ventas:** _Completar._
- **Top 10 productos más vendidos:** _Completar._

---

## 📂 Dataset

- **Fuente:** <!-- Pegar acá el link del dataset de Kaggle -->
- **Período cubierto:** Año 2010.

---

## 📬 Contacto

<!-- Pegar acá tu LinkedIn / portfolio -->
