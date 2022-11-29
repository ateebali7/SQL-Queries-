SELECT 
    CASE
        WHEN rating BETWEEN 1 AND 1.99 THEN '1 Stars'
        WHEN rating BETWEEN 2 AND 2.99 THEN '2 Stars'
        WHEN rating BETWEEN 3 AND 3.99 THEN '3 Stars'
        WHEN rating BETWEEN 4 AND 4.99 THEN '4 stars'
        WHEN rating = 5 THEN '5 Stars'
        ELSE 'No Ratings'
    END AS ratings,
    COUNT(group_name)
FROM
    grp
GROUP BY ratings
ORDER BY COUNT(group_name) DESC;


SELECT 
    group_name, rating, members
FROM
    grp
WHERE
    rating = 5
ORDER BY members DESC;


SELECT 
    category_id, group_name, rating, city, members
FROM
    grp
        JOIN
    city ON grp.city_id = city.city_id
WHERE
    rating = 5
ORDER BY members DESC;

/* category id - 1, 10, 27 - New York Groups
 31 - Chicago group 
 34- San Francisco group*/

SELECT 
    COUNT(grp.category_id), category.category_id, category_name
FROM
    grp
        JOIN
    category ON grp.category_id = category.category_id
GROUP BY category_name
ORDER BY COUNT(grp.category_id) DESC;

