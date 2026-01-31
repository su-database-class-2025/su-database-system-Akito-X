SELECT co.country, count(DISTINCT cu.customer_id), sum(p.amount)
    FROM payment AS p
    JOIN customer AS cu ON p.customer_id = cu.customer_id
    JOIN address AS a ON cu.address_id = a.address_id
    JOIN city AS ci ON a.city_id = ci.city_id
    JOIN country AS co ON ci.country_id = co.country_id
    GROUP BY co.country_id
