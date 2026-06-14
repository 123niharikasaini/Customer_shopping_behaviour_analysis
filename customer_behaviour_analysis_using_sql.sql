use customer_behaviour_analysis;
select * from customer_shopping_behavior;

-- =========================== Revenue by gender ==============================
select gender, sum(purchase_amount) as Revenue
from customer_shopping_behavior
group by gender
order by Revenue desc;

-- =========================== High-Spending Discount Users ==============================
select customer_id, purchase_amount from customer_shopping_behavior
where discount_applied = 'Yes' and
purchase_amount>(select avg(purchase_amount) from customer_shopping_behavior);

-- =========================== Top 5 Products by Rating ==============================
select item_purchased, round(avg(review_rating),2) as Rating
from customer_shopping_behavior
group by item_purchased
order by Rating desc
limit 5;

-- =========================== avg rating for each category ===========================
select category as Clothing_category, round(avg(review_rating),2) as Avg_review_rating, 
sum(purchase_amount) as Revenue, count(customer_id) as Total_orders,
sum(purchase_amount)/count(customer_id) as unit_price
from customer_shopping_behavior
group by category
order by Avg_review_rating desc;

-- =========================== Shipping Type Comparison ==============================
select shipping_type, round(sum(purchase_amount)/count(customer_id),2) as avg_puchase_amount, count(customer_id) as total_purchases
from customer_shopping_behavior
group by shipping_type
order by total_purchases desc;

-- =========================== Subscribers vs. Non-Subscribers ==============================
select subscription_status, count(customer_id) as total_customer,
round(sum(purchase_amount)/count(customer_id),2) as avg_puchase_amount, sum(purchase_amount) as revenue_generated
from customer_shopping_behavior
group by subscription_status;

-- =========================== Discount-Dependent Products ==============================
SELECT 
    item_purchased,
    round(sum(case when discount_applied='Yes' then 1 else 0 end)/count(*)*100,2) as discount_rate
FROM
    customer_shopping_behavior AS a
GROUP BY item_purchased
ORDER BY discount_rate DESC
limit 5;

-- =========================== Customer Segmentation ==============================
-- new, returning and loyal
-- new => prevoius purchase =>0

with customer_segment_data as(
select customer_id,
case 
when previous_purchases<=1 and purchase_frequency_days<=90 then 'New'
when previous_purchases<=1 and purchase_frequency_days>90 then 'Returning'
when previous_purchases>=2 and previous_purchases<10 and purchase_frequency_days<=90 then 'Loyal'
when previous_purchases>=2 and previous_purchases<10 and purchase_frequency_days>90 then 'Returning'
when previous_purchases>=10 and purchase_frequency_days<=90 then 'Loyal'
when previous_purchases>=10 and purchase_frequency_days>90 then 'Returning'
end as customer_segment

from customer_shopping_behavior)

select customer_segment, count(*) as total_customer
from customer_segment_data
group by customer_segment
order by total_customer desc;

-- =========================== Top 3 Products per Category ==============================
select 
-- outer query for top 3 items
	category, 
    item_purchased, 
    total_purchases, 
    item_rank
from(
	select 
		category, 
		item_purchased, 
		count(customer_id) as total_purchases, 
		row_number() over(partition by category order by count(customer_id) desc) as item_rank
	from customer_shopping_behavior
	group by category, item_purchased
    ) as temp
where item_rank<=3
order by category, item_rank;

-- =========================== Repeat Buyers & Subscriptions ==============================
select subscription_status, count(customer_id) as repeat_buyers
from customer_shopping_behavior
where previous_purchases>5 
group by subscription_status
order by repeat_buyers desc;

-- =========================== Revenue by Age Group ==============================
select age_group, sum(purchase_amount) as revenue_generated, count(customer_id) as total_orders
from customer_shopping_behavior
group by age_group
order by revenue_generated desc;

-- =========================== Highest revenue generating season ===========================
select season as Season, sum(purchase_amount) as Revenue
from customer_shopping_behavior
group by season
order by Revenue desc;