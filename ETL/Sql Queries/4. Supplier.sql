insert into [Car_DWs].[dbo].[Dim_Supplier]
(
	[Supplier_ID_BK],
	[supplier_name],
	[supplier_contact],
	[counrty_code],
	[supplier_counrty],
	[supplier_address]
)
select 
	[supplier_id],
	[supplier_name],
	[supplier_contact_details],
	[counrty_code],
	countr.[country]
	,[supplier_address]       	      
from
	[CarsSales].[dbo].[supplier] sup

join [CarsSales].[dbo].[country] countr
on countr.country_code = sup.counrty_code

