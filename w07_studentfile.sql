-- Use the art database

-- Outputs all columns from the table 'artwork'

-- Show me the first three pieces of artwork (title and period)
--  in alphabetical order


-- Show me all the different periods from the artwork 
-- (DISTINCT, only one of each - gets rid of repeats)


-- Show me the artwork from the artist with id #3


-- Show me artwork with the title's that start with A to I
     -- try < 'J' to get I's
-- What about Ia or I to Z

-- Show me the title of the artwork for the years 1800 to 1904
SELECT title, artyear
FROM artwork
WHERE artyear > 1800 AND artyear < 1904;
-- OR --- BETWEEN IS INCLUSIVE - uses the first and last number

-- Show me the artwork titles for the periods 'Modern' and 'Baroque'

-- Show me the titles and periods for the artwork that has the period having part of the word 'impr'

-- OR 
-- Use REGEXP now
SELECT title, period
FROM artwork
WHERE period REGEXP 'impr';

-- Show me the title and period of the artwork that begins with word 'Post'
SELECT title, period
FROM artwork
WHERE period REGEXP '^Post';

-- Show me the title and period of the artwork that ends with 'ism' for period
SELECT title, period
FROM artwork
WHERE period REGEXP 'ism$';

-- Show me the title of the artwork that begins with the word 'Old' (title)
SELECT title 
FROM artwork
WHERE title REGEXP '^Old';

-- Show me the title and period of the artwork that has 'the' 'in' or 'on' in the title
SELECT title
FROM artwork
WHERE title REGEXP 'the|in|on';

-- Show me the full name of an artist for those who have middle names and sort it by an Alias called Middle

-- can't use Middle for WHERE

-- From the bike database


-- Show me all of the records in the product table


-- Show me products, model years, and list price but display list price as the column 'Price' 
-- without editing the database and from the most expensive to least expensive 
 SELECT product_name, model_year, list_price AS Price
 FROM product
 ORDER by Price;

-- Show me products, model years, and list price 
-- but round it and display the column as 'Rounded Price' without editing the database
SELECT product_name, model_year, ROUND(list_price) AS 'Rounded Price'
FROM product;
 
-- Show me the products, model years, and list price and add $100 to each without editing the database 
SELECT product_name, model_year, list_price, list_price + 100
FROM product;

-- Show me products, model years, and list price and list the column as "price_adjustment"
-- and show me only the prices over $1000
SELECT product_name, list_price + 100 AS price_adjustment
FROM product
WHERE list_price + 100 > 1000   -- can't use price_adjustment here because of Order of Executuion
ORDER BY price_adjustment;     -- can use it here however

-- Show me the products and model year of the products that start with Trek or Surly
-- (but not from 2016)
SELECT product_name, model_year
FROM product
WHERE (product_name LIKE 'Trek%' OR product_name LIKE 'Surly%') AND NOT model_year = 2016;
-- change AND to OR and now you get other brands that are not 2016
-- Without the ()s is only takes off 2016s for Surly
-- OR with REGEX and another NOT <>
SELECT product_name, model_year
FROM product
WHERE (product_name REGEXP '^Trek' OR product_name REGEXP '^Surly') AND model_year <> 2016;