## Northwind Traders Documentation


**Overview on the Database:**

The Northwind database is a sample database commonly used for learning and demonstration purposes in database management systems. It simulates a fictional trading company that sells various products to customers. The database contains tables for managing customers, products, orders, employees, suppliers, and more.


**ERD (Entity-Relationship Diagram):**

![image](https://github.com/farah1612/NorthWind_ITI_GaduationProject/assets/96481182/b1d23c7e-ef0d-4964-a623-526779015f8a)

The Entity-Relationship Diagram (ERD) illustrates the structure of the Northwind database, showing the relationships between different entities such as customers, orders, products, and employees.


**OLTP Schema:**

![image](https://github.com/farah1612/NorthWind_ITI_GaduationProject/assets/96481182/d39aee56-5e26-4d5d-ad20-aae8abe35443)

The OLTP (Online Transaction Processing) schema of the Northwind database represents the relational database model used for transactional operations. It includes tables such as Customers, Orders, OrderDetails, Products, Employees, and Suppliers, each capturing specific data related to the company's operations.


**Data Warehouse Modelling (Conversion into Star Schema):**

![image](https://github.com/farah1612/NorthWind_ITI_GaduationProject/assets/96481182/e6a280bb-bb3e-400e-a8cd-9f7766b0f81a)

In the data warehousing process, the OLTP schema of the Northwind database can be transformed into a star schema. This involves structuring the data into a central fact table surrounded by dimension tables. For example, the Orders table can serve as the fact table, while dimensions such as Customers, Products, and Employees can be extracted into separate dimension tables.


**ETL from the OLTP Database into the Data Warehouse using SSIS:**

The ETL (Extract, Transform, Load) process involves extracting data from the OLTP database (Northwind), transforming it into the desired format, and loading it into the data warehouse. This process automated using tools like SQL Server Integration Services (SSIS), which provides a visual interface for designing ETL workflows.


**Performing OLAP Cube SSAS (SQL Server Analysis Services):**

Then we performed SSAS for building multidimensional cube based on the data warehouse schema. These models can then be used for advanced analytics, data mining, and business intelligence purposes.


**Performing paginated Reports SSRS (SQL Server Reporting Services):**

We performed three reports using SSRS that provide detailed insights into various aspects of the business. Three reports can be generated for Inventory, employees, and customers, each report featuring key performance indicators (KPIs) relevant to the respective entity.


**Performing Dashboards on Power BI, Tableau, Excel:**

We performed interactive dashboards using tools Power BI, Tableau, and Excel. These dashboards leverage the data warehouse to visualize multiple insights and KPIs, allowing users to gain actionable insights into the company's performance. The dashboards can include visualizations such as charts, graphs, and KPI cards, providing a comprehensive view of key metrics and trends.
