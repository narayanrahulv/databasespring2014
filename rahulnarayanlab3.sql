--Rahul Narayan: Lab 3 Getting started with SQL queries
--Database Systems: Spring 2014
--Note: using lower function since I noticed postgresql was case sensitive

--1. List the name and city of agents named Smith
Select  name
	,city 
From Agents
Where
	lower(name) = 'smith'

--2. List pid, name, and quantity of products costing more than US$1.25
Select pid
	,name
	,quantity
From Products
Where
	priceusd > 1.25

--3. List the ordno and aid of all orders
Select ordno
	,aid
From Orders

--4. List the names and cities of customers in Dallas
Select name
	,city
From Customers
Where 
	lower(city) = 'dallas'	

--5. List the names of agents not in New York and not in Newark
Select name
From Agents
Where
	lower(city) not in('new york','newark')

--6. List all data for products not in New York or Newark that cost US $1 or more
Select *
From Products
Where
	lower(city) not in('new york','newark')
	AND priceusd >= 1

--7. List all data for orders in January or March	
Select *
From Orders
Where
	lower(mon) in('jan','mar')

--8. List all data for orders in February less than US $100
Select *
From Orders
Where
	lower(mon) = 'feb'
	AND dollars < 100.00

--9. List all orders from the customer where cid is C001
Select *
From Orders
Where
	lower(cid) = 'c001'