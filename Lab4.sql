--Rahul Narayan: Lab 4 SQL Queries - The Sequel
--Database Systems: Spring 2014

--1. cities of agents booking an order for customer 'basics'
SELECT City
FROM agents
WHERE aid in
	(SELECT aid
	 FROM orders
	 WHERE cid in
		(SELECT cid
		 FROM customers
		 WHERE lower(name) = 'basics'
		)
	)

--2. get the pids of products ordered through any agent who makes at least one order for a customer in kyoto
-- If an aid is present in the orders table, it means that aid has made at least one order
-- The and handles the part of the customer's city being kyoto
SELECT pid
FROM products
WHERE pid in
	(SELECT pid
	 FROM orders
	 WHERE aid in
		(SELECT aid
		 FROM agents
		)
		AND cid in
		(SELECT cid
		 FROM customers
		 WHERE lower(city) = 'kyoto'
		)
	)

--3. find the cids and names of customers who never placed an order through agent a03
SELECT cid
	,name
FROM customers	
WHERE cid not in
	(SELECT cid
	 FROM orders
	 WHERE lower(aid) = 'a03'
	)

--4. get the cids and names of customers who ordered both product p01 and p07
--looked up intersect function on this one
SELECT cid
	,name
FROM customers
WHERE cid in
	(SELECT cid 
	 FROM orders
	 WHERE lower(pid) in('p01')
	 INTERSECT
	 SELECT cid 
	 FROM orders
	 WHERE lower(pid) in('p07')
	)

--5. get the pids of products ordered by any customers who ever placed an order through agent a03	
SELECT pid
FROM products
WHERE pid in
	(SELECT DISTINCT pid
	 FROM orders
	 WHERE lower(aid) = 'a03'
	)

--6. get the names and discounts of all customers who place orders through agents in dallas or duluth
--agent city comes into play
SELECT name
	,discount
FROM customers	
WHERE cid in
	(SELECT cid
	 FROM orders
	 WHERE aid in
		 (SELECT DISTINCT aid
		  FROM agents
		  WHERE lower(city) in ('dallas','duluth')
		 )
	)

--7. find all customers who have the same discount as that of any customers in dallas or kyoto
SELECT *
FROM customers	
WHERE DISCOUNT in 
	(SELECT discount
	 FROM customers
	 WHERE lower(city) in ('dallas','kyoto')
	)
	AND cid not in
	(SELECT cid 
	 FROM customers
	 WHERE lower(city) in ('dallas','kyoto')
	)