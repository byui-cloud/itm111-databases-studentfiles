-- Use the bike DB

-- Output all columns (*) from the 'store' table

-- Add some text with two columns like this: "The 'store_name' email is 'email'" 

-- if we used store_id which is an integer that would become a part of the string and would not be an integer any more.

-- Show me only the first 15 characters for all the product names

-- try RIGHT
-- Show me only the last 10 characters for all the product names

-- Show me the number count of letters including spaces for the product names

-- try LTRIM and RTRIM

-- Trim the spaces from a line of text; deletes any spaces from the left (leading) and right (trailing)
SELECT TRIM('    This is the password   ') , ('This is the password');
-- Trim the right side; deletes any spaces from the right (trailing)
SELECT RTRIM('    This is the password   '), ('    This is the password');
-- Trim the left side; deletes any spaces from the left (leading)
SELECT LTRIM('    This is the password   '), ('This is the password   ');

-- Change all the text to upper case for store names

-- Change all the text to upper case for store names

-- parameters for LOCATE(find, search, [start]) returns an integer of where it is located
-- Show me the starting location letter's number of the word 'Girl' and return the product name too 
-- only display the ones that have the word Girl

-- parameters for SUBSTRING(string, start, length)--
-- Show me the text from product_names starting at character 9 and show the next 6 characters

-- Show me only the word "Girl's" in product_names
-- returns true if found

-- Use the art database

-- Show the artwork

-- Art database return the starting location of the word 'woman' for all artwork 
-- (and returning 0 if it doesn't have the word)

-- Do the same thing but return the word 'Woman' (5 letters long)

-- NUMERIC functions

-- Use the bike DB

-- Show prices of products

-- Round the list price from products and show the price - do it for 1 digit, 2 digits, 3, no parameter

-- Round down (remove any decimal)

-- Roundup  the list price from products and show the price

-- Return the prices with the dollar sign in front

-- DATE functions

-- Show me the year of the order date

-- Show me the day of the order date

-- Show me the month of the order date
-- SELECT MONTH(order_date), order_date

-- Show me the minute of now

-- Show me the system date and time, same as now

-- Show me how many days until Halloween
SELECT DATEDIFF('2024-10-31', NOW()) AS 'Days until Halloween';

-- Show me how long it took to ship from the order date
-- days it took from order to shipped

-- Add 9 days to the orderdate 

-- What does this do? 
SELECT CEILING(DATEDIFF('2023-12-25', '2023-6-25') / 7 ); -- DATEDIFF returns days, if you divide by 7, it ...

-- Format Code	Description
-- %c	Month, numeric
-- %M	Month name
-- %e	Day of the month, numeric
-- %D	Day of the month with suffix
-- %y	Year, 2 digits
-- %Y	Year, 4 digits
-- %W	Weekday name

-- Show me the order date as something like this 'January the 1st, 2035'

-- Show me the order date as something like this '1/1/35'