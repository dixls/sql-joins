-- write your queries here
SELECT * 
    FROM owners o 
    FULL JOIN vehicles v ON o.id = v.owner_id;

SELECT o.first_name, 
       o.last_name, 
       COUNT(v.id) 
    FROM owners o 
    JOIN vehicles v ON o.id = v.owner_id 
    GROUP BY o.id 
    ORDER BY o.first_name;

SELECT o.first_name, 
       o.last_name, 
       ROUND(AVG(v.price)) AS average_price, 
       COUNT(v.id) AS count 
    FROM owners o 
    JOIN vehicles v ON o.id = v.owner_id 
    GROUP BY o.id 
    HAVING COUNT(v.id) > 1 AND AVG(v.price) > 10000 
    ORDER BY o.first_name DESC;