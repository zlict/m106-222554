SELECT category.name, COUNT(*) FROM film_category 
  JOIN category ON category.category_id = film_category.category_id 
  GROUP BY film_category.category_id 
  HAVING COUNT(*) < 60;


SELECT actor.first_name, actor.last_name, category.name FROM film
  JOIN film_category ON film_category.film_id = film.film_id
  JOIN category ON category.category_id = film_category.category_id
  JOIN film_actor ON film_actor.film_id = film.film_id
  JOIN actor ON actor.actor_id = film_actor.actor_id
  WHERE actor.first_name = 'DAN' AND actor.last_name = 'TORN' AND category.name = 'Drama';


DELETE film_actor FROM film
  JOIN film_category ON film_category.film_id = film.film_id
  JOIN category ON category.category_id = film_category.category_id
  JOIN film_actor ON film_actor.film_id = film.film_id
  JOIN actor ON actor.actor_id = film_actor.actor_id
  WHERE actor.first_name = 'DAN' AND actor.last_name = 'TORN' AND category.name = 'Drama';