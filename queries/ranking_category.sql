-- Rankings categorías
select hdd.category_id, category.name, count(hdd.category_id) as count
from film
join hdd
on film.title = hdd.title
left join category
on hdd.category_id = category.category_id
group by category_id
order by count desc