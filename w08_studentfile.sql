-- Query 1 Use the bike DB

-- Query 2 Output all columns (*) from the 'store' table

-- Query 3 Add some text with two columns like this: "The 'store_name' email is 'email'" 

-- Query 4 if we used store_id which is an integer that would become a part of the string and would not be an integer any more.

-- Query 5 Show me only the first 15 characters for all the product names

-- try RIGHT
-- Query 6 Show me only the last 10 characters for all the product names

-- Query 7 Show me the number count of letters including spaces for the product names

-- Query 8 try LTRIM and RTRIM

-- Query 9 Trim the spaces from a line of text; deletes any spaces from the left (leading) and right (trailing)
SELECT TRIM('    This is the password   ') , ('This is the password');
-- Trim the right side; deletes any spaces from the right (trailing)
SELECT RTRIM('    This is the password   '), ('    This is the password');
-- Trim the left side; deletes any spaces from the left (leading)
SELECT LTRIM('    This is the password   '), ('This is the password   ');

-- Query 10 Change all the text to upper case for store names

-- Query 11 Change all the text to upper case for store names

-- Query 12 parameters for LOCATE(find, search, [start]) returns an integer of where it is located
-- Show me the starting location letter's number of the word 'Girl' and return the product name too 
-- only display the ones that have the word Girl

-- Query 13 parameters for SUBSTRING(string, start, length)--
-- Show me the text from product_names starting at character 9 and show the next 6 characters

-- Query 14 Show me only the word "Girl's" in product_names
-- returns true if found

-- Query 15 Use the art database

-- Query 16 Show the artwork

-- Query 17 Art database return the starting location of the word 'woman' for all artwork 
-- (and returning 0 if it doesn't have the word)

-- Query 18 Do the same thing but return the word 'Woman' (5 letters long)

-- NUMERIC functions

-- Query 19 Use the bike DB

-- Query 20 Show prices of products

-- Query 21 Round the list price from products and show the price - do it for 1 digit, 2 digits, 3, no parameter

-- Query 22 Round down (remove any decimal)

-- Query 23 Roundup  the list price from products and show the price

-- Query 24 Return the prices with the dollar sign in front

-- DATE functions

-- Query 25 Show me the year of the order date

-- Query 26 Show me the day of the order date

-- Query 27 Show me the month of the order date
-- SELECT MONTH(order_date), order_date

-- Query 28 Show me the minute of now

-- Query 29 Show me the system date and time, same as now

-- Query 30 Show me how many days until Halloween
SELECT DATEDIFF('2024-10-31', NOW()) AS 'Days until Halloween';

-- Query 31 Show me how long it took to ship from the order date
-- days it took from order to shipped

-- Query 32 Add 9 days to the orderdate 

-- Query 33 What does this do? 
SELECT CEILING(DATEDIFF('2023-12-25', '2023-6-25') / 7 ); -- DATEDIFF returns days, if you divide by 7, it ...

-- Format Code	Description
-- %c	Month, numeric
-- %M	Month name
-- %e	Day of the month, numeric
-- %D	Day of the month with suffix
-- %y	Year, 2 digits
-- %Y	Year, 4 digits
-- %W	Weekday name

-- Query 34 Show me the order date as something like this 'January the 1st, 2035'

-- Query 35 Show me the order date as something like this '1/1/35'
