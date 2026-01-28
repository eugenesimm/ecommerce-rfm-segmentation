with delivered_orders as(
	select
		customer_unique_id,
		order_id,
		order_purchase_timestamp::date as order_date
	from olist_orders_dataset
	join olist_customers_dataset
	using(customer_id)
	where order_status = 'delivered'
), payments_per_order as(
	select
		order_id,
		sum(payment_value) as order_revenue
	from olist_order_payments_dataset
	group by order_id
), orders_with_revenue as(
	select
		o.customer_unique_id,
		o.order_id,
		o.order_date,
		coalesce(p.order_revenue, 0) as order_revenue
	from delivered_orders o
	left join payments_per_order p
	using(order_id)
),ref_date as (
    select max(order_date) AS ref_date
    from delivered_orders
)
select
	customer_unique_id,
	min(order_date) as first_order_date,
	(r.ref_date - max(order_date)) AS recency_days,
	count(distinct(order_id)) as frequency,
	sum(order_revenue) as monetary
from orders_with_revenue
cross join ref_date r
group by customer_unique_id, r.ref_date
order by customer_unique_id;

	


