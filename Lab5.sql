--Rahul Narayan: Lab 5 SQL Queries - The Three-quel
--Database Systems: Spring 2014

--1. The cities of agents booking an order for customer "Basics". This time use joins;no subqueries.
SELECT	a.city
FROM agents a
	INNER JOIN orders o on
		a.aid = o.aid	
	INNER JOIN customers c on
		o.cid = c.cid
WHERE 
	lower(c.name) = 'basics'
	
--2. The pids of products ordered through any agent who makes at least one order for a customer in Kyoto. Use joins this time;no subqueries.
SELECT distinct p.pid
FROM products p	
	INNER JOIN orders o on
		p.pid = o.pid
	INNER JOIN customers c on
		o.cid = c.cid
WHERE 
	lower(c.city) = 'kyoto'

--3. The names of customers who have never placed an order. Use a subquery
SELECT c.cid
FROM customers c	
where c.cid NOT IN
	(SELECT DISTINCT cid
	 FROM orders
	)

--4. The names of customers who have never placed an order. Use an outer join	
SELECT c.name
FROM customers c
LEFT JOIN orders o on
	c.cid = o.cid
WHERE
	o.cid is NULL	

--5. The names of customers who had placed at least one order through an agent in their city along with those agents' names
SELECT c.name,a.name,a.city
FROM agents a
	INNER JOIN orders o on
		a.aid = o.aid	
	INNER JOIN customers c on
		o.cid = c.cid
WHERE 
	a.city = c.city	

--6. The names of customers and agents in the same city, along with the name of the city, regardless of whether or not the customer has
--ever placed an order with that agent	
SELECT c.name,a.name,c.city
FROM customers c
LEFT JOIN orders o on
	c.cid = o.cid
LEFT JOIN agents a on
	o.aid = a.aid
WHERE
	c.city = a.city

--7. The name and city of customers who live in the city where the least number of products are made	
select * from products p
INNER JOIN orders o on
	p.pid = o.pid
INNER JOIN customers c on
	o.cid = c.cid
--where quantity = min(quantity)