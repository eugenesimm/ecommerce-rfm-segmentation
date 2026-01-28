with payment_per_customer as (
	select 
		order_purchase_timestamp::date as order_date,
		customer_unique_id,
		o.order_id,
		ooid.product_id,
		price + freight_value as payment_value
	from olist_orders_dataset as o
	inner join olist_customers_dataset as c
	on c.customer_id  = o.customer_id
	inner join olist_order_items_dataset as ooid
	on o.order_id = ooid.order_id
	WHERE o.order_status = 'delivered'
)
select
	order_date,
	customer_unique_id,
	order_id,
	payment_value,
	pcnt.product_category_name_english as product_category_name
from payment_per_customer as ppc
left join olist_products_dataset opd
on ppc.product_id = opd.product_id 
left join product_category_name_translation pcnt 
on opd.product_category_name = pcnt.product_category_name 
