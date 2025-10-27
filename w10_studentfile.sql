-- Query 1 Let's use the v_art database, select it
USE v_art;

-- Query 2 Show me the country, firstname, and lastname from the table artist
SELECT country, fname, lname
FROM artist;

-- Query 3 Which artist are from France? What if there were thousands?
SELECT country, fname, lname
FROM artist
WHERE country = ‘France’;

-- Query 4 How many total artist are from France?
SELECT COUNT(country)
FROM artist
WHERE country = ‘France’;

-- This next one won't work, why?
-- Query 5 Can't use fname and lname anymore because the summary count doesn't go with one person
SELECT COUNT(country), fname, lname
FROM artist
WHERE country = ‘France’;

-- Query 6 But I could use country because that is the same for all
SELECT COUNT(country), country
FROM artist
WHERE country = ‘France’;

-- Query 7 Switch to the bike database
USE bike;

-- Query 8 Show me the list prices of the products
SELECT list_price
FROM product;

-- Query 9 Show me the average list price
SELECT AVG(list_price)
FROM product;

-- Query 10 Show me the average list price with only two decimals, outputs an integer
SELECT ROUND(AVG(list_price),2) AS averagelistprice
FROM product;

-- Query 11 Outputs with comma and is a string
SELECT FORMAT(AVG(list_price),2) averagelistprice
FROM product;

-- Query 12 Show me the total cost of all the items
SELECT SUM(list_price)
FROM product;

-- Query 13 Show me the most expensive and least expensive item in one query
SELECT MAX(list_price) AS 'most expensive' , MIN(list_price) AS 'least expensive'
FROM product;

-- Query 14 Show me which one (item) is the most expensive
SELECT product_name, list_price
FROM product
ORDER BY list_price DESC
LIMIT 1;
-- OR 
SELECT product_name, list_price
FROM product
WHERE list_price IN (SELECT MAX(list_price) FROM product);

-- Query 15 Show me the average list price for 2016 models
-- If I wanted the average of each model year I could get one year at a time this way
SELECT AVG(list_price)
FROM product
WHERE model_year = 2016;
-- And I'd have to do that for each year. What if I wanted all the years at once?
-- Query 16 Show me the average list price for 2017 models
SELECT AVG(list_price)
FROM product
WHERE model_year = 2017;

-- Query 17 Show me the average list price of each model year listed by year
-- Answer: use GROUP BY
SELECT AVG(list_price)
FROM product
GROUP BY model_year;

-- Query 18 can use model_year to clarify. The model year is the same for each row
SELECT model_year, AVG(list_price)
FROM product
GROUP BY model_year;

-- Query 19 DOES NOT WORK - WHY NOT?
SELECT model_year, AVG(list_price)
FROM product
WHERE model_year;

-- filtering before it's grouped. Look at image here and talk about order of execution:
-- FROM WHERE GROUP BY HAVING SELECT ORDER BY LIMIT
-- For with God, He sends out love

-- Query 20 Show me the average list price of each model year listed by year only if the 
-- list prices are over $2800


-- Query 21 WITH ROLLUP is a subclause of GROUP BY, average of all the averages
-- Show me the average list price of each model year listed by year only if the list prices are over $2800
-- Then show me the final average of all the averages

-- Query 22 Do the same one but show me the total 
-- Sum of all the sums 'Grand Total' - still for each model year listed by year only if the list prices are over $2800

-- Query 23 Same as above but only count each price once
-- If we had bikes the same price we might not want to include the same price twice in the average, we'd use DISTINCT

-- Query 24 Same as above but instead of DISTINCT try ALL and then without them
-- ALL is the default and is assumed when not there
-- Delete ALL vs DISTINCT

-- Works well with COUNT. 
-- Query 25 Same as above with ALL but use COUNT instead of AVG - see how it works well with COUNT

-- Query 26 Same as above with COUNT instead of ALL, leave it blank

-- Query 27 Same as above with COUNT instead of AVG but use DISTINCT instead of all 
-- Here we can count all the unique list_prices over 2800

-- Query 28 (Copy Query 24) Remember this one from before:

-- HAVING filters after the grouping. Remember you only have access to what has been grouped and aggregated (values and aggregates that are part of the group). 
-- It's right there with SELECT in the Order of Execution
-- FROM WHERE GROUP BY HAVING SELECT ORDER BY LIMIT

-- Order of operation or how we type it out
-- SELECT FROM WHERE GROUP BY HAVING ORDER BY LIMIT
-- Stay Firm With God, Honor Our Lord

-- Query 29 Show me the average list price of each model year listed by year only if the list prices are over $2800
-- BUT ONLY SHOW me those model years with their averages over $4000
-- This is another IF filter but you have to have the column in the SELECT whereas the WHERE can be any column

-- Query 30 Be careful using FORMAT in a HAVING clause (it's a string not a number at that point)

-- Query 31 Does work because it is an integer

-- Query 32 WHERE can use any column in the base table but HAVING can't


-- Query 33 Does not work because the column being used in the having clause in not in the group by

-- Query 34 This works:

-- Query 35 An average price of each brand

-- Query 36 Filtering before and after the grouping
-- Filter to all model years excluding and newer than 2016

-- Query 37 Switch to the magazine database

-- Query 38 on your own 
-- How many people subscribe to Beautiful Birds

-- Query 39 Add magazineName to the last query
-- I can add magazineName because the WHERE does limit it to that magazine

-- Query 40 Now how do I see subscribers to all magazines?

-- Query 41 What would I add to see just magazines with 2 or more subscribers?
 -- OR HAVING COUNT(*) >= 2

-- Query 42 What is the total revenue for each magazine?
-- What about using COUNT(*)

-- Query 43 Switch to the bike database

-- Query 44 On your own -- Get the highest and lowest priced bike in each brand
-- note Windows machines might let them see brand_name even if they take off the GROUP BY -- it shouldn't

-- Query 45 On your own -- How many bikes we have total in stock everywhere. 13,511

-- Query 46 How can we group it to see how many of each bike we have in stock everywhere?

-- Query 47 We can also see how many we have at of each bike at each store

-- Query 48 WITH ROLLUP shows a total of each bike at the stores and grand total at bottom 13,511

-- Query 49 If we reverse the grouping with store name as group and product as the sub group we get the total of how many bikes we have at each store.

-- Query 50 Now we can see if one specific bike is at any of the stores adding a WHERE
-- Do the same thing but only show bikes with the name 'Electra Cruiser 1 Ladies'
