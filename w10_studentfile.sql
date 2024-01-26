-- Let's use the v_art database, select it
USE v_art;

-- Show me the country, firstname, and lastname from the table artist
SELECT country, fname, lname
FROM artist;

-- Which artist are from France? What if there were thousands?
SELECT country, fname, lname
FROM artist
WHERE country = ‘France’;

-- How many total artist are from France?
SELECT COUNT(country)
FROM artist
WHERE country = ‘France’;

-- This next one won't work, why?
-- Can't use fname and lname anymore because the summary count doesn't go with one person
SELECT COUNT(country), fname, lname
FROM artist
WHERE country = ‘France’;

-- But I could use country because that is the same for all
SELECT COUNT(country), country
FROM artist
WHERE country = ‘France’;

-- Switch to the bike database
USE bike;

-- Show me the list prices of the products
SELECT list_price
FROM product;

-- Show me the average list price
SELECT AVG(list_price)
FROM product;

-- Show me the average list price with only two decimals, outputs an integer
SELECT ROUND(AVG(list_price),2) AS averagelistprice
FROM product;

-- Outputs with comma and is a string
SELECT FORMAT(AVG(list_price),2) averagelistprice
FROM product;

-- Show me the total cost of all the items
SELECT SUM(list_price)
FROM product;

-- Show me the most expensive and least expensive item in one query
SELECT MAX(list_price) AS 'most expensive' , MIN(list_price) AS 'least expensive'
FROM product;

-- Show me which one (item) is the most expensive
SELECT product_name, list_price
FROM product
ORDER BY list_price DESC
LIMIT 1;
-- OR 
SELECT product_name, list_price
FROM product
WHERE list_price IN (SELECT MAX(list_price) FROM product);

-- Show me the average list price for 2016 models
-- If I wanted the average of each model year I could get one year at a time this way
SELECT AVG(list_price)
FROM product
WHERE model_year = 2016;
-- And I'd have to do that for each year. What is I wanted all the years at once?
-- Show me the average list price for 2017 models
SELECT AVG(list_price)
FROM product
WHERE model_year = 2017;

-- Show me the average list price of each model year listed by year
-- Answer: use GROUP BY
SELECT AVG(list_price)
FROM product
GROUP BY model_year;

-- can use model_year to clarify. The model year is the same for each row
SELECT model_year, AVG(list_price)
FROM product
GROUP BY model_year;

-- DOES NOT WORK - WHY NOT?
SELECT model_year, AVG(list_price)
FROM product
WHERE model_year;

-- filtering before it's grouped. Look at image here and talk about order of execution:
-- FROM WHERE GROUP BY HAVING SELECT ORDER BY LIMIT
-- For with God, He sends out love

-- Show me the average list price of each model year listed by year only if the 
-- list prices are over $2800


-- WITH ROLLUP is a subclause of GROUP BY, average of all the averages
-- Show me the average list price of each model year listed by year only if the list prices are over $2800
-- Then show me the final average of all the averages

-- Do the same one but show me the total 
-- Sum of all the sums 'Grand Total' - still for each model year listed by year only if the list prices are over $2800

-- Same as above but only count each price once
-- If we had bikes the same price we might not want to include the same price twice in the average, we'd use DISTINCT

-- Same as above but instead of DISTINCT try ALL and then without them
-- ALL is the default and is assumed when not there
-- Delete ALL vs DISTINCT

-- Works well with COUNT. 
-- Same as above with ALL but use COUNT instead of AVG - see how it works well with COUNT

-- Same as above with COUNT instead of ALL, leave it blank

-- Same as above with COUNT instead of AVG but use DISTINCT instead of all 
-- Here we can count all the unique list_prices over 2800

-- Remember this one from before:

-- HAVING filters after the grouping. Remember you only have access to what has been grouped and aggregated (values and aggregates that are part of the group). 
-- It's right there with SELECT in the Order of Execution
-- FROM WHERE GROUP BY HAVING SELECT ORDER BY LIMIT

-- Order of operation or how we type it out
-- SELECT FROM WHERE GROUP BY HAVING ORDER BY LIMIT
-- Stay Firm With God, Honor Our Lord

-- Show me the average list price of each model year listed by year only if the list prices are over $2800
-- BUT ONLY SHOW me those model years with their averages over $4000
-- This is another IF filter but you have to have the column in the SELECT whereas the WHERE can be any column

-- Be careful using FORMAT in a HAVING clause (it's a string not a number at that point)

-- Does work because it is an integer

-- WHERE can use any column in the base table but HAVING can't


-- Does not work because the column being used in the having clause in not in the group by

-- This works:

-- An average price of each brand

-- Filtering before and after the grouping
-- Filter to all model years excluding and newer than 2016

-- Switch to the magazine database

-- on your own 
-- How many people subscribe to Beautiful Birds

-- Add magazineName to the last query
-- I can add magazineName because the WHERE does limit it to that magazine

-- Now how do I see subscribers to all magazines?

-- What would I add to see just magazines with 2 or more subscribers?
 -- OR HAVING COUNT(*) >= 2

-- What is the total revenue for each magazine?
-- What about using COUNT(*)

-- MAYBE DON'T DO THESE:

-- Switch to the bike database

-- On your own -- Get the highest and lowest priced bike in each brand

-- note Windows machines might let them see brand_name even if they take off the GROUP BY -- it shouldn't

-- On your own -- How many bikes we have total in stock everywhere. 13,511

-- How can we group it to see how many of each bike we have in stock everywhere?

-- We can also see how many we have at of each bike at each store

-- WITH ROLLUP shows a total of each bike at the stores and grand total at bottom 13,511

-- If we reverse the grouping with store name as group and product as the sub group we get the total of how many bikes we have at each store.

-- Now we can see if one specific bike is at any of the stores adding a WHERE
-- Do the same thing but only show bikes with the name 'Electra Cruiser 1 Ladies'
