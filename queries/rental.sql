-- Ficha del alquiler de películas por número de inventario
select	film.film_id, film.title, coalesce(inventory.inventory_id, 0) as inventory_id,
		rental.rental_id, rental.rental_date, rental.return_date
from film
left join inventory
on film.film_id = inventory.film_id
inner join rental
on inventory.inventory_id = rental.inventory_id
group by title, rental_id;