SELECT 
    COUNT(*)
FROM
    event
WHERE
    event_name LIKE ('%toastmaster%');


SELECT 
    event_name, city
FROM
    event
        JOIN
    venue_ ON event.venue_id = venue_.venue_id
WHERE
    event_name LIKE ('%toastmaster%');


SELECT 
    COUNT(event_name), city
FROM
    event
        JOIN
    venue_ ON event.venue_id = venue_.venue_id
WHERE
    event_name LIKE ('%toastmaster%')
GROUP BY city;