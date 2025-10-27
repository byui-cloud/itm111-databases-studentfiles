-- Query 1 Use the v_art database

-- Query 2 Look at artist_id in the artist table

-- Query 3 Look at artist_id in the artwork table

-- Query 4 A list of all the artists with each of their art works (can demonstrate alias's and USING if you'd like here, but realize the USING clause isn't universal for all RDBMS and there are some limitations with USING. That is why we teach with ON not USING) 
 
 -- We specify INNER JOIN and not just JOIN to allow for cross server compatability (it's industry standard as well to specify which join).
 -- these are the two IDs (usually the same) from two tables you are merging

-- Query 5 A list of all the artists even if they don't have any artwork
-- in other words: all artist and only related artwork
 -- adding a table alias for artist called 'a'
 -- adding a table alias for artwork called 'aw'
 -- using a. meaning the table artist and aw. for the table artwork

-- Maybe look at https://art.byuiwebdev.com/

-- Query 6 What if I only want Leonardo diVinci's?
 -- OR fname = 'Leonardo'

-- Query 7 On your own: A list of all the artwork from artist in the 
-- Show all art from the Netherlands. (title, artfile, period, arttype, artlocation).


-- Maybe do the Week 9 world practice here instead, but make sure to view the union at the very end of this code.

-- Query 8 Switch to the bike database

-- Query 9 Output 'category' table

-- Query 10 Output 'product' table

-- Query 11 Output products, categories, and list prices
   
-- Query 12 I also want the brand as well, this involves 3 tables
    
-- Query 13 On your own: All children category bikes

-- Query 14 On your own: All staff at Rowlett Bikes Store

-- Query 15 All products ordered with price and quantity, shows need for grouping later

-- Query 16 All products ordered in March 2016


-- More joins (table aliases, more practice with outer joins)

-- Query 17 SWITCH to the magazine database

-- Query 18 show table aliases, AS is an optional keyword with column aliases
-- and with table aliases


-- Query 19 reverse the two table's order and show how it's the same with RIGHT
-- There is one magazine with no subscribers. How would you show all magazines
-- and only the related data of the subscription table? (On their own)
-- list out magazineName, magazinePrice, and subscriptionStartDate (use table aliases)

    
-- Query 20 Now add to the query above the 3rd table of subscribers so you can see
-- their last name (demonstrates using 3 tables in a OUTER JOIN) (On their Own)
-- It should still show the one magazine with  date and name as null

-- need the second JOIN as LEFT otherwise you don't get all the results from 
-- the first join that includes the one magazine with no relations.
-- Because that magazine didn't have a related magazineKey in the first JOIN, it won't
-- show the next join either (no subscriber either), unless we ask for all in the previous join.
-- A Venn diagram can explain this with 3 circles. 

-- Query 21 FULL OUTER JOIN simulated with UNION in MySQL
-- Copy the LEFT OUTER JOIN above and UNION it to Same with ithe RIGHT JOINS
SELECT magazineName, magazinePrice, subscriptionStartDate, subscriberLastName
FROM magazine m 
	LEFT JOIN subscription s
	ON m.magazineKey = s.magazineKey
    LEFT JOIN subscriber sr
    ON s.subscriberKey = sr.subscriberKey
UNION
SELECT magazineName, magazinePrice, subscriptionStartDate, subscriberLastName
FROM magazine m 
	RIGHT JOIN subscription s
	ON m.magazineKey = s.magazineKey
    RIGHT JOIN subscriber sr
    ON s.subscriberKey = sr.subscriberKey;
	
-- Query 22 Use world database

-- Query 23 Show all cities in the continent of Asia. This one targets city names

-- Query 24 Show all languages in country of Egypt. Note: You do not need the alias on Name this time but it is good to do so.

-- Query 25 Show the population and cities in the continents in the western hemisphere
-- Format the population and order by population from greatest to least.

-- Query 26 Use artwork

-- Query 27 Show all titles with their period and keyword.

-- Common Error: missing the table alias. Throws an Unknown column error. Add the alias 'aw' after artwork
-- INNER JOIN artwork 
-- ON a.artist_id = aw.artist_id

-- Common Error: missing the table alias. Throws an ambiguity error. Add the table name 'a' or 'artist'
-- ON aw.artist_id = artist_id

-- Query 28 Show all titles with their artist, period and keyword.
