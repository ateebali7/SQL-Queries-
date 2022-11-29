SELECT 
    COUNT(member_id), YEAR(joined)
FROM
    grp_member
GROUP BY YEAR(joined)
ORDER BY YEAR(joined);


SET SQL_SAFE_UPDATES = 0;

UPDATE grp_member 
SET 
    city = 'Chicago'
WHERE
    city IN ('East Chicago' , 'West Chicago',
        'North Chicago',
        'Chicago Heights',
        'Chicago Ridge');

UPDATE grp_member 
SET 
    city = 'San Francisco'
WHERE
    city IN ('South San Francisco' , 'San Francisco');

UPDATE grp_member 
SET 
    city = 'New York'
WHERE
    city IN ('West New York' , 'New York');

SET SQL_SAFE_UPDATES = 1;


SELECT 
    COUNT(member_id), YEAR(joined)
FROM
    grp_member
WHERE
    city = 'Chicago'
GROUP BY YEAR(joined)
ORDER BY YEAR(joined);


SELECT 
    COUNT(member_id), YEAR(joined)
FROM
    grp_member
WHERE
    city = 'San Francisco'
GROUP BY YEAR(joined)
ORDER BY YEAR(joined);


SELECT 
    COUNT(member_id), YEAR(joined)
FROM
    grp_member
WHERE
    city = 'New York'
GROUP BY YEAR(joined)
ORDER BY YEAR(joined);


SELECT 
    MONTH(joined), COUNT(member_id)
FROM
    grp_member
WHERE
    YEAR(joined) = 2017
GROUP BY MONTH(joined)
ORDER BY MONTH(joined);



