-- Categoría y actores
select film.film_id, film.title, coalesce(hdd.category_id,0) as category_id, coalesce(hdd.name_actor,'UNKNOWN') as name_actor
from film
left join hdd
on film.title = hdd.title;
