-- Create a new database titled 'mdb'

-- Switch system to use the 'mdb' database

-- Create a table called 'actors' with two columns/attributes 'last_name' and 'first_name' of the string data type (varchar)
-- Varchar is for a variable amount of characters with a maximum number
-- Not null makes it required; auto increment gives it an incrementing number (surrogate key) as you insert records


-- View all the columns (*) from the table 'actors'

-- Make/insert a new record for 'Tom Hanks' and 'Tim Allen'
-- 'NULL' normally would put an empty value, but if set as an auto incrementing column, 'NULL' will put a key starting with the number '1', '2', etc.

-- Make a new record for 'Annie Potts' 
-- 'DEFAULT' will input whatever default value was set for that column (ex: 'Idaho' if set),
-- But if set as an auto incrementing column, 'DEFAULT' will also put the next number in te list as '3', '4', etc.


-- Make a new record for 'Carrie Fisher'
-- Best to always put the column names and have them match the values so you know which one is going where
-- You can skip the auto incrementing primary key if 'AI' is checked


-- Change the auto_increment number to start back at 6 if you deleted any numbers or want to start somewhere specific

-- Create a new table called 'movies' and provide the settings, column names, storage types, etc.

-- Output all columns from the table movies

-- Create record for the movie Toy Story, G, 1995, Pixar

-- Or (skipping the auto incrementing column ID and it will do it automatically)

-- Or

-- This is VERY DANGEROUS and will change all actors to 'Tommy'
-- If safe mode is enabled it could prevent it but don't plan on that

-- This only updates Tommy Hanks from 'Tom Hanks' to 'Tommy Hanks'

-- Better to use primary key when updating or deleting

-- Delete the record/entry of the actor with the ID of 1

-- DELETE the entire table and all entries/records in the 'actors' table

-- DELETE the entire database, all tables, and all entries/records

-- The faster way to do inserts, create all records in one insert statement
-- Run after you forward engineer an empty database
-- Creates new records/rows for each actor

-- Better to use the VALUE column names 
-- INSERT INTO actors VALUES (actor_id, last_name, first_name)

-- Output the result set of all columns (*) from the table 'actors'

-- Create records of the movies


-- Output the result set of all columns (*) from the table 'movies'


-- Inserting data into a linking table
-- Look at SELECT statements for both actor and movie to get the ID numbers here
-- Look at the PDF or dataset provided to know which actor is in which movie

