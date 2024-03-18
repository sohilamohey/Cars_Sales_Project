insert into [Car_DWs].[dbo].[Fact_Sales]
(
	[Order_ID_BK], [supplier_sk],
[customer_sk], [car_sk],
[shipping_sk],[order_date],[ship_date],
[quantity],
[feedback],feedback_ID,
Payment_method_ID, 
[tax],[sales],status_id, [status]
)

select 
	ord.order_id, dimSupp.Supplier_Sk,
dimCust.customer_sk, dimCar.car_sk,
dimShip.shipping_sk,ord.order_date,
ord.ship_date, ord.quantity, 
custfeed.feedback, custfeed.feedback_id,
payMeth.method_id, 
ord.tax, ord.sales, st.status_id, st.status_name
 	
from [CarsSales].[dbo].[orders] ord

join [CarsSales].[dbo].[customer] cust
on ord.customer_id = cust.customer_id -- db 
join [Car_DWs].[dbo].[Dim_Customer] dimCust
on dimCust.customer_id_bk = cust.customer_id
join [CarsSales].[dbo].[customer_feedback] custfeed
on custfeed.feedback_id = ord.feedback_id
join [CarsSales].[dbo].[supplier] sup
on sup.supplier_id = ord.supplier_id
join [Car_DWs].[dbo].[Dim_Supplier] dimSupp
on dimSupp.Supplier_ID_BK = sup.supplier_id
join [CarsSales].[dbo].[order_status] ordst
on ord.order_id = ordst.order_id
join [CarsSales].[dbo].[status] st
on st.status_id = ordst.status_id
join [CarsSales].[dbo].[ship] shipp
on shipp.ship_id = ord.ship_id
join [Car_DWs].[dbo].[Dim_Shipping_method] dimShip
on shipp.ship_id = dimShip.shipping_id_bk
join [CarsSales].[dbo].[payment_method] payMeth
on ord.payment_id = payMeth.method_id

join [CarsSales].[dbo].[car] carr
on carr.car_id = ord.car_id
join [Car_DWs].[dbo].[Dim_Car] dimCar
on dimCar.car_id_bk = carr.car_id




--select * from [CarsSales].[dbo].[orders] ord
--join [CarsSales].[dbo].[payment_method] payMeth
--on ord.payment_id = payMeth.method_id
select *
from [Car_DWs].[dbo].[Fact_Sales]

