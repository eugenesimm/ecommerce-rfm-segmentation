with delivered_order as(
	select
		order_id,
		order_purchase_timestamp::date as order_date,
		customer_unique_id
	from olist_orders_dataset o
	join olist_customers_dataset c
	on o.customer_id = c.customer_id
	where order_status = 'delivered' 
), payments_per_order as (
	select
		order_id,
		sum(payment_value) as order_revenue
	from olist_order_payments_dataset
	group by order_id
)
select
	order_date,
	customer_unique_id,
	sum(coalesce(order_revenue,0)) as daily_revenue
from delivered_order o
left join payments_per_order p
on o.order_id = p.order_id 
group by o.order_date, o.customer_unique_id 
order by o.order_date, o.customer_unique_id 
