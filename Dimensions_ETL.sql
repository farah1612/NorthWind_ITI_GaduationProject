-- ####### Dim|Customer Extraction query #######
select * from customers

-- ####### Dim|Employee Extraction query #######
select * from NorthWind_DWH.dbo.[DIM|Employee]
select * from employees

-- ####### Dim|Territory Extraction query #######
select * from NorthWind_DWH.dbo.[DIM|Territory]

select territory_id, territory_description, R.region_id, region_description 
from territories T left join  regions R
on T.region_id = R.region_id


-- ####### Dim|Product Extraction query #######
select P.product_id, product_name,
       S.supplier_id,C.category_id,quantity_per_unit,
       unit_price,units_in_stock,units_on_order, reorder_level,discontinued,
	   C.category_name, C.description, 
	   S.company_name, S.contact_name,S.contact_title, S.address, 
	   S.city, S.region, S.postalcode, S.country, S.phone, S.fax
from products P
left join categories C
on P.category_id = C.category_id
left join suppliers S
on P.supplier_id = S.supplier_id

-- ####### Dim|Shipper Extraction query #######
select * from shippers

