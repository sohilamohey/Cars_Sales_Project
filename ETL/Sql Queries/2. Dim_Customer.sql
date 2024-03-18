insert into [Car_DWs].[dbo].[Dim_Customer]
(customer_id_bk, customer_name, phone_number, gender, email,
city, country_code, state, address, country
)
select  cust.customer_id,
	cust.customer_first_name,
	cust.customer_last_name,
	cust.customer_full_name,
	cust.customer_phone_number,
	cust.gender,
	cust.customer_email,
	cust.job,
	cust.customer_city,
	cust.customer_country_code,
	cust.customer_state,
	cust.customer_address,
	countr.country
from  [CarsSales].[dbo].[customer] cust
join [CarsSales].[dbo].[country] countr
on countr.country_code = cust.customer_country_code
