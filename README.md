# Basic--SQL_Project
A SQL project using Basic Queries 
These queries are designed to showcase various skills and techniques in SQL for data analysis using the "Mavenmovies" database:

1. **Query to Get Actor Names and Their Lengths:**
   - Description: This query retrieves the first ten actor names from the "actor" table in the "Mavenmovies" database. It concatenates the first name and last name of each actor using the `CONCAT()` function and then calculates the length of the full name using the `LENGTH()` function.
   - Purpose: This query demonstrates the usage of string functions `CONCAT()` and `LENGTH()` in SQL to manipulate text data and retrieve the length of a string.
   
2. **Query to Get Actor Names with "Oscar" Awards:**
   - Description: This query retrieves the names of actors from the "actor_award" table in the "Mavenmovies" database who have received awards containing the term "Oscar." It concatenates the first name and last name using `CONCAT()` and filters the results using the `LIKE` keyword with a pattern "%oscar%" to match any awards containing "oscar" in any position.
   - Purpose: This query demonstrates the use of the `LIKE` keyword to perform pattern matching in SQL, useful for searching for specific substrings in textual data.

3. **Query to Get Actor Name for a Specific Film Title:**
   - Description: This query retrieves the name of an actor who starred in a film with the title "FROST HEAD." It involves joining the "actor," "film_actor," and "film" tables on relevant keys and using the `WHERE` clause to filter the results based on the specific film title.
   - Purpose: This query demonstrates how to use `JOIN` statements to retrieve data from multiple related tables based on common keys and apply filtering using `WHERE` clause.

4. **Query to Get Films of a Specific Actor:**
   - Description: This query retrieves the titles of films in which an actor with the name "will wilson" appeared. It involves joining the "actor," "film_actor," and "film" tables on relevant keys and using the `WHERE` clause to filter the results based on the actor's full name.
   - Purpose: This query showcases another use case of `JOIN` statements along with the `WHERE` clause to find information related to a specific entity based on its attributes.

5. **Query to Get Films Returned in May:**
   - Description: This query retrieves the titles of films that were returned in the month of May. It involves joining the "film," "inventory," and "rental" tables on relevant keys and using the `MONTH()` function on the `return_date` to extract the month, then filtering the results for the month value equal to 05 (May).
   - Purpose: This query demonstrates the use of date-related functions (`MONTH()`) and filtering data based on specific date criteria.

6. **Query to Get Comedy Films:**
   - Description: This query retrieves the titles of films that belong to the "comedy" category. It involves joining the "film," "film_category," and "category" tables on relevant keys and using the `WHERE` clause to filter the results based on the category name.
   - Purpose: This query demonstrates how to retrieve data from related tables using `JOIN` statements and filter the results based on a specific category.

