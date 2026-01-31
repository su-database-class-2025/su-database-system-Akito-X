SELECT title, replacement_cost FROM film
    WHERE (SELECT max(replacement_cost) FROM film) = replacement_cost;