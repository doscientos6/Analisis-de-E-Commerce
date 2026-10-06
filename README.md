# 🛒 Análisis de E-Commerce Shop (Kaggle Dataset)

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

Se desarrolló un reporte interactivo enfocado en la experiencia del usuario y la claridad visual. 

<img width="1429" height="784" alt="image" src="https://github.com/user-attachments/assets/4884e27c-4f4a-4618-92f9-7a0fc4a3782d" />

https://drive.google.com/file/d/1lac6OiZqdHPvegVw4byh4vno8d2Bw4bk/view?usp=drive_link

### Fase 3: Análisis e Insights

> ⚠️ _Sección en construcción — se completará con capturas del dashboard y el análisis correspondiente a cada pregunta de negocio._

**Ventas por país**

<img width="575" height="340" alt="image" src="https://github.com/user-attachments/assets/107de861-fcac-4e97-85c1-150388c4c2ea" />

UK concentra la gran mayoría de las ventas totales ($10,64 mill.), lo cual es esperable tratándose de una tienda local. Excluyéndolo para poder comparar al resto, Netherlands ($285 mil) y EIRE ($283 mil) lideran el mercado internacional, seguidos de cerca por Germany ($229 mil) y France ($210 mil). A partir de Australia ($139 mil) se observa una caída pronunciada, y el resto de los países (Spain, Switzerland, Belgium, Sweden, Japan) representan una porción marginal del negocio ($37-62 mil cada uno). Esto sugiere que, más allá del mercado doméstico, la empresa tiene una base de clientes internacionales concentrada en un puñado de países europeos cercanos, con oportunidad de expansión en los mercados de cola larga.

**Clientes recurrentes**

<img width="368" height="296" alt="image" src="https://github.com/user-attachments/assets/cebd5dde-cb7d-4803-9a51-ff0a445f8582" />

El 65,58% de los clientes (3 mil) realizó más de una compra, mientras que el 34,42% restante (1,49 mil) compró una única vez. Que la mayoría de la base sea recurrente es una señal positiva de fidelización: indica que el negocio no depende exclusivamente de la captación constante de clientes nuevos, sino que logra retener a una parte significativa de su audiencia después de la primera compra.

**Promedio de productos por cliente**

<img width="265" height="124" alt="image" src="https://github.com/user-attachments/assets/1bd6113d-66b4-4632-bbfb-826596723ce7" />

En promedio, cada cliente compró 1.260 unidades a lo largo del período analizado. Este número relativamente alto es consistente con el tipo de producto que maneja el negocio (artículos de bazar y regalería de bajo costo unitario), donde es común que una misma compra incluya grandes cantidades de un mismo artículo (por ejemplo, revendedores o compras para eventos).

**Estacionalidad de ventas**

<img width="565" height="331" alt="image" src="https://github.com/user-attachments/assets/b4eec2c8-ebd4-4642-8db7-8f4025bae345" />

Las ventas muestran una clara estacionalidad: se mantienen relativamente estables y bajas entre enero y agosto (entre $0,5 mill. y $0,8 mill. mensuales), con una caída puntual en febrero-marzo, y a partir de septiembre comienzan a crecer de forma sostenida hasta alcanzar su pico en noviembre ($1,51 mill.), coincidiendo con la temporada de compras previa a las fiestas de fin de año. Este patrón es un insight clave para la planificación de inventario, campañas de marketing y dotación de personal, ya que anticipa con claridad cuándo se concentra la mayor demanda del año.

**Top 10 productos más vendidos**

<img width="821" height="294" alt="image" src="https://github.com/user-attachments/assets/32436d98-f2db-4e32-a1f9-e765e5d5c4a6" />

El producto más vendido fue "Paper Craft, Little Birdie" con 81 mil unidades, seguido de cerca por "Medium Ceramic Top Storage Jar" (78 mil). Ambos superan ampliamente al resto del top 10, que se ubica en un rango de 27 mil a 55 mil unidades. El listado está dominado por artículos decorativos y de bajo costo (holders, ornamentos, cajas), lo cual es coherente con el perfil general del catálogo. Estos productos son los principales candidatos a priorizar en campañas de reposición de stock, dado su alto volumen de rotación.

---

## 📬 Contacto
https://www.linkedin.com/in/lautaro-vila-gallardo-5a8b2b405/
