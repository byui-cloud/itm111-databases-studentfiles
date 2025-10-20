-- Query 1
-- Create a new database titled 'mdb'

-- Query 2
-- Switch system to use the 'mdb' database

-- Query 3
-- Create a table called 'actors' with two columns/attributes 'last_name' and 'first_name' of the string data type (varchar)
-- Varchar is for a variable amount of characters with a maximum number
-- Not null makes it required; auto increment gives it an incrementing number (surrogate key) as you insert records

-- Query 4
-- View all the columns (*) from the table 'actors'

-- Query 5
-- Make/insert a new record for 'Tom Hanks' and 'Tim Allen'
-- 'NULL' normally would put an empty value, but if set as an auto incrementing column, 'NULL' will put a key starting with the number '1', '2', etc.

-- Query 6
-- Make a new record for 'Annie Potts' 
-- 'DEFAULT' will input whatever default value was set for that column (ex: 'Idaho' if set),
-- But if set as an auto incrementing column, 'DEFAULT' will also put the next number in te list as '3', '4', etc.

-- Query 7
-- Make a new record for 'Carrie Fisher'
-- Best to always put the column names and have them match the values so you know which one is going where
-- You can skip the auto incrementing primary key if 'AI' is checked

-- Query 8
-- Change the auto_increment number to start back at 6 if you deleted any numbers or want to start somewhere specific

-- Query 9
-- Create a new table called 'movies' and provide the settings, column names, storage types, etc.

-- Query 10
-- Output all columns from the table movies

-- Query 11
-- Create record for the movie Toy Story, G, 1995, Pixar

-- Or (skipping the auto incrementing column ID and it will do it automatically)

-- Or

-- Query 12
-- This is VERY DANGEROUS and will change all actors to 'Tommy'
-- If safe mode is enabled it could prevent it but don't plan on that

-- Query 13
-- This only updates Tommy Hanks from 'Tom Hanks' to 'Tommy Hanks'

-- Query 14
-- Better to use primary key when updating or deleting

-- Query 15
-- Delete the record/entry of the actor with the ID of 1

-- Query 16
-- DELETE the entire table and all entries/records in the 'actors' table

-- Query 17
-- DELETE the entire database, all tables, and all entries/records

-- Query 18
-- The faster way to do inserts, create all records in one insert statement
-- Run after you forward engineer an empty database
-- Creates new records/rows for each actor

-- Query 19
-- Better to use the VALUE column names 
-- INSERT INTO actors VALUES (actor_id, last_name, first_name)

-- Query 20
-- Output the result set of all columns (*) from the table 'actors'

-- Query 21
-- Create records of the movies

-- Query 22
-- Output the result set of all columns (*) from the table 'movies'

-- Query 23
-- Inserting data into a linking table
-- Look at SELECT statements for both actor and movie to get the ID numbers here
-- Look at the PDF or dataset provided to know which actor is in which movie

