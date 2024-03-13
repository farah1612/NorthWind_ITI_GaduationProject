-- #### Extract Fact table ###
select * from NorthWind_DWH.dbo.[FACT|Orders]

select od.order_id, employee_id, ship_via as shipper_id,product_id,customer_id,
        order_date,Cast(order_date as date) BK_orderDate, required_date,shipped_date,
		ship_name, ship_city,ship_region, ship_postal_code,ship_country,
		freight, unit_price, quantity, discount
from orders_details od join orders o
on od.order_id = o.order_id
where order_date >= ? -- last_ETL_Date
and order_date < ? -- Start_time

-- ### Lookups for SKs ###
use NorthWind_DWH
-- ### Lookup for employee_FK ###
select Employee_SK, Employee_ID_BK
from [DIM|Employee]
where is_current = 1
-- ### Lookup for Customer_FK ###
select Customer_SK, Customer_ID_BK
from [DIM|Customer]
where is_current = 1
-- ### Lookup for DateSK ###
select DateSk, Date
from [DimDate]
-- ### Lookup for product ###
select Product_SK, Product_ID_BK
from [DIM|Product]
where is_current = 1
-- ### Lookup for Shipper_FK ###
select Shipper_SK, Shipper_iD_BK
from [DIM|Shipper]
where is_current = 1
