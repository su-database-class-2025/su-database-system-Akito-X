SELECT country_id, count(city)
    FROM city
    GROUP BY country_id
    ORDER BY -count(city);