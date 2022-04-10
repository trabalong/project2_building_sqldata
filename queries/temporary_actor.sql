-- Tabla temporal de películas con actores para buscar actor/actriz concreto/a
create temporary table datafilms.films1
select film.film_id, film.title, coalesce(hdd.name_actor,'UNKNOWN') as name_actor
from film
left join hdd
on film.title = hdd.title;