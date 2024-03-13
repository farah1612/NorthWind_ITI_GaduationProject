Use NorthWind_DWH
GO
Create table [DIM|Customer]
(
[Customer_SK] int primary key identity(1,1),
[Customer_ID_BK] [nvarchar](50) ,
[Company_name] [nvarchar](50) ,
[Contact_name] [nvarchar](50) ,
[Contact_title] [nvarchar](50) ,
[City] [nvarchar](50) ,
[Region] [nvarchar](50) ,
[Postal_code] [nvarchar](50) ,
[Country] [nvarchar](50) ,
[Phone] [nvarchar](50) ,
source_system_code tinyint,
Start_Date Datetime,
End_Date Datetime,
is_current int default 1
)
GO
CREATE TABLE [dbo].[DIM|Employee](
    [Employee_SK] int primary key identity(1,1),
	[Employee_ID_BK] [tinyint]  ,
	[Full_Name] [nvarchar](100) ,
	[title_of_courtesy] [nvarchar](50) ,
	[title] [nvarchar](50) ,
	[birth_date] [date],
	[hire_date] [date] ,
	[address] [nvarchar](50) ,
	[city] [nvarchar](50) ,
	[region] [nvarchar](50) ,
	[postalcode] [nvarchar](50) ,
	[country] [nvarchar](50) ,
	[homephone] [nvarchar](50) ,
	[extension] [smallint],
	[notes] [nvarchar](450) ,
	[reports_to] [tinyint],
	source_system_code tinyint,
    Start_Date Datetime,
    End_Date Datetime,
    is_current int default 1
	)
	GO
	CREATE TABLE [dbo].[DIM|Product](
	[Product_SK] int identity(1,1) primary key,
	[Product_ID_BK] [tinyint] ,
	[product_name] [nvarchar](50) ,
	[supplier_id_BK] [tinyint] ,
	[category_id_BK] [tinyint] ,
	[quantity_per_unit] [nvarchar](50) ,
	[unit_price] [float] ,
	[units_in_stock] [tinyint] ,
	[units_on_order] [tinyint] ,
	[reorder_level] [tinyint] ,
	[discontinued] [bit] ,
	[category_name] [nvarchar](50) ,
	[description] [nvarchar](100) ,
	[company_name] [nvarchar](50) ,
	[contact_name] [nvarchar](50) ,
	[contact_title] [nvarchar](50) ,
	[address] [nvarchar](50) ,
	[city] [nvarchar](50) ,
	[region] [nvarchar](50) ,
	[postalcode] [nvarchar](50) ,
	[country] [nvarchar](50) ,
	[phone] [nvarchar](50) ,
	[fax] [nvarchar](50) ,
	source_system_code tinyint,
    Start_Date Datetime,
    End_Date Datetime,
    is_current int default 1
	)
	CREATE TABLE [dbo].[DIM|Shipper](
	[Shipper_SK] int identity(1,1) primary key,
	[Shipper_iD_BK] [tinyint] ,
	[Company_name] [nvarchar](50) ,
	[phone] [nvarchar](50) ,
	source_system_code tinyint,
    Start_Date Datetime,
    End_Date Datetime,
    is_current int default 1
	)

	CREATE TABLE [dbo].[DIM|Territory](
	[Territory_SK] int identity(1,1) primary key,
	[Terrotiry_ID_BK] int ,
	[territory_description] [nvarchar](50) ,
	[region_id_BK] [tinyint] ,
	[region_describtion] [nvarchar](50),
	source_system_code tinyint,
    Start_Date Datetime,
    End_Date Datetime,
    is_current int default 1
	)
	GO
	Create TABLE [dbo].[FACT|Orders](
	[Order_SK] int identity(1,1) primary key,
	[Order_ID_BK] smallint  ,

	[Employee_ID_FK] int foreign key REFERENCES [DIM|Employee](employee_sk)  ,
	[Shipper_ID_FK] int foreign key REFERENCES [DIM|Shipper](Shipper_SK),
	[Product_ID_FK] int foreign key REFERENCES [DIM|Product](Product_SK),
	[Customer_ID_FK] int foreign key REFERENCES [DIM|Customer](Customer_SK),
	

	[order_date] int  foreign key REFERENCES [DimDate](DateSK),
	[required_date] int foreign key REFERENCES [DimDate](DateSK),
	[shipped_date] int foreign key REFERENCES [DimDate](DateSK) ,

	
	[ship_name] nvarchar(50) ,
	[ship_city] nvarchar(50) ,
	[ship_region] nvarchar(50) ,
	[ship_postal_code] nvarchar(50) ,
	[ship_country] nvarchar(50) ,

	[freight] float,
	[unit_price] float ,
	[quantity] tinyint ,
	[discount] float ,
	Total_price float,
	Created_at Datetime Default GETDATE()
	)
