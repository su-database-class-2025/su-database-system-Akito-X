SELECT country_id, count(city)
    WHERE (SELECT count(city) FROM city GROUP BY country_id) >= 20;
    -- 途中