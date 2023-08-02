/*1-Write a SQL query to count the number of characters except for the spaces for each actor. Return the first 10 actors' name lengths along with their names.

2-List all Oscar awardees(Actors who received the Oscar award) with their full names and the length of their names.

3-Find the actors who have acted in the film ‘Frost Head.’

4-Pull all the films acted by the actor ‘Will Wilson.’

5-Pull all the films which were rented and return them in the month of May.

6-Pull all the films with ‘Comedy’ category.*/


-- 1
 SELECT concat(first_name," ",last_name) as names, LENGTH(concat(first_name,last_name)) AS name_length
FROM actor
limit 10;
-- 2
 select concat(first_name," ",last_name) as name, length(concat(first_name,last_name)),awards
from actor_award
where awards like'%oscar%' ;
-- 3
select concat(first_name," ",last_name) as name
from actor a
join film_actor fa on a.actor_id = fa.actor_id
join film f on fa.film_id = f.film_id
where title = 'FROST HEAD';

-- 4
 select title
from actor a
join film_actor fa on a.actor_id = fa.actor_id
join film f on fa.film_id = f.film_id
where concat(first_name," ",last_name) = 'will wilson';

-- 5
 select title
from film f
join inventory i on f.film_id = i.film_id
join rental r on i.inventory_id = r.inventory_id
where month(return_date) = 05;
-- 6

 select title
from film f
join film_category fc on f.film_id = fc.film_id
join category c on fc.category_id = c.category_id
where c.name = 'comedy';