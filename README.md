🛒 Análisis de E-Commerce (Kaggle Dataset)

Este proyecto es un análisis de transacciones de e-commerce basado en el dataset de Kaggle "E-Commerce Analysis" <!-- Reemplazar por el nombre exacto del dataset -->. El objetivo principal fue identificar patrones de venta, comportamiento de clientes y productos clave, y traducir los datos en insights accionables para la toma de decisiones.

Tecnologías y Herramientas
SQL (PostgreSQL): Extracción, modelado, validación de datos y consultas exploratorias iniciales.
Power BI & DAX: Modelado relacional, cálculo de métricas avanzadas (Medidas DAX) y diseño del dashboard interactivo.
Storytelling de Negocio: Traducción de métricas técnicas a insights accionables para la toma de decisiones.
📁 Fases del Proyecto
Fase 1: Extracción y Preparación (SQL)

Antes de analizar los datos, se aseguró la integridad de la carga mediante consultas SQL.

Podés revisar el código completo en el archivo 01_Create_Table.sql.
Tareas realizadas: Creación de la estructura de la tabla (DDL), conversión de la columna invoice_date de VARCHAR a TIMESTAMP (debido a que el formato original no coincide con el orden que PostgreSQL interpreta por defecto), validación de duplicados, valores nulos y caracteres corruptos, y limpieza de espacios innecesarios en campos de texto.
Fase 2: Preguntas de Negocio (SQL)

Se plantearon y respondieron preguntas de negocio concretas para entender el comportamiento de ventas, clientes y productos.

Podés revisar el código completo en el archivo 02_Preguntas_Negocio.sql.
Preguntas respondidas:
Ventas por país.
Cantidad de clientes recurrentes.
Promedio de cantidad de productos comprados por cliente.
Ventas por mes del año.
Los diez productos más vendidos durante el año.
Fase 3: Visualización y Dashboard (Power BI)

Se desarrolló un reporte interactivo enfocado en la experiencia del usuario y la claridad visual. <!-- Completar una vez armado el dashboard -->

Link para descargar el dashboard .pbix

<!-- Pegar acá el link de descarga -->
Fase 4: Análisis e Insights

⚠️ Sección en construcción — se completará una vez ejecutadas las queries y analizados los resultados.

Ventas por país: Completar.
Clientes recurrentes: Completar.
Promedio de productos por cliente: Completar.
Estacionalidad de ventas: Completar.
Top 10 productos más vendidos: Completar.
📂 Dataset
Fuente: E-Commerce Analysis - Kaggle <!-- Reemplazar por el link exacto -->
Período cubierto: Año 2010.
📬 Contacto
<!-- Agregar links a LinkedIn, portfolio o GitHub de perfil -->
