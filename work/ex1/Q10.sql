SELECT country_id, count(*)
    FROM city
    GROUP BY country_id
    ORDER BY count(city) DESC;
-- DESCで降順に