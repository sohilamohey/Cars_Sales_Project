insert into [Car_DWs].[dbo].[Dim_Car]
(
	car_id_bk, 
	car_maker, 
	car_model, 
	car_color,
	car_year, 
	car_price
)
select 
	c.car_id,
	c.car_maker,
	c.car_model,
	c.car_color,
	c.car_model_year,
	c.car_price
from 
	car c

