SELECT c.name AS category, DATE_PART('day', avg(r.return_date - r.rental_date)) as avg_rental_period
    FROM rental AS r
    JOIN inventory AS i ON r.inventory_id = i.inventory_id
    JOIN film AS f ON i.film_id = f.film_id
    JOIN film_category AS fc ON f.film_id = fc.film_id
    JOIN category AS c ON fc.category_id = c.category_id
    GROUP BY c.category_id
