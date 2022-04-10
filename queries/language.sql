-- Todas las pelis por su idioma, en inglés todas cómo no
select film.film_id, film.title, language.name
from film
join language
on film.language_id = language.language_id;