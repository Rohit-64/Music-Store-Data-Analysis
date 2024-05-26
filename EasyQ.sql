--** EASY LEVEL **
--Q1: Who is the senior most employee based on job title?
select concat(first_name,last_name) as Employee_Name,levels from employee
order by levels desc
limit 1
--Q2: Which country have the most invoices?
select count(*) as c, billing_country from invoice
group by billing_country
order by c desc
limit 1
--Q3: What are top 3 values total invoice?
select * from invoice
order by total desc
limit 3
--Q4: which city has the best customers? We would like to throw a promotional music festival in the city we made
-- the most money.Write a query that returns one city that has the highest sum of invoice totals.Return both the city
--name and sum of all invoice totals
select sum(total) as total,billing_city from invoice
group by billing_city
order by total desc
limit 1
--Q5: Who is the best customer? The customer who has spent the most money will be declared the best customer.
--Write a query that returns the person who has spent the most money
select c.customer_id,c.first_name,c.last_name,sum(i.total) as total
from customer as c
inner join invoice as i
on c.customer_id=i.customer_id
group by c.customer_id
order by total desc
limit 1


