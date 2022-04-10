-- Inventario realizado, que no falte de na que me mosqueo, aunque no se sabría porque no se ha hecho de todos los films
select film.film_id, film.title, coalesce(inventory.inventory_id, 0) as inventory_id
from film
left join inventory
on film.film_id = inventory.film_id
group by title;