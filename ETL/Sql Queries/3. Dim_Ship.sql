insert into [Car_DWs].[dbo].[Dim_Shipping_method]
(	[shipping_id_bk], 
	[shipping],
	[ship_mode], 
	[ship_cost])
select 
	[ship_id],
	[shipping],
	[ship_mode],
	[ship_cost]
from 
	[CarsSales].[dbo].[ship] 


