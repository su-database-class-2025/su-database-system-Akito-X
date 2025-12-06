SELECT *
    FROM (
        SELECT 
            *,
            COUNT(*) OVER (PARTITION BY country_id) AS same_country_city_count
        FROM city
    ) AS ex_city
    WHERE ex_city.same_country_city_count >= 20;
-- OVERで計算範囲の限定
-- PARTITION BYで列をグループ化