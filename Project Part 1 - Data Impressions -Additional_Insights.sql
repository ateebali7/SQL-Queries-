-- VENUE_

SELECT 
    COUNT(city) AS num_of_venues, city
FROM
    venue_
GROUP BY city;

/* LetsMeet events can be hosted by venues in many different cities but based on our data we have found that New York city has the most venues. With a total of 518 venues, New York almost doubles the number of venues for Chicago which has the second highest venues(287).*/



-- GRP 

SELECT 
    *
FROM
    grp
ORDER BY created
LIMIT 1;

/* LetsMeet has many groups in its network and the Longest running group has been "New York City Poker Group" with 1,797 members. This group was created on 10-08-2002 and is located in New York city. The group is also listed as public_limited, meaning the group is limited to the public which explains the relatively low number of members compared to other groups that are public.*/



-- GRP_MEMBER

SELECT 
    *
FROM
    grp_member
ORDER BY joined
LIMIT 1;

SELECT 
    member_name, member_id, city, COUNT(member_id) AS num_of_grps
FROM
    grp_member
GROUP BY member_id
ORDER BY COUNT(member_id) DESC;

/* LetsMeet has many members and one of the first members who is still active is Christine. Christine joined in 2003 on April 14 and is a member in the city of New York. 
There are also multiple members that are part of many groups, based on our data we have found 7 members that are part of 7 number of groups which is the highest for a member to be part of multiple groups. These members are Nitin, Kaushik, Ana, Lucy, Huang, Steve, and Sam. New York seems to be a very popular place for our members, 4 out of 7 members were members in  New York and so was our first LetsMeet member.*/ 



-- CITY

SELECT 
    city, state, member_count
FROM
    city
WHERE member_count <= 50
ORDER BY member_count;

/*  There are a total of 15 cities where LetsMeet groups and members gather and of those 15 there are a total of 5 cities with a member count less than 50 members. Chicago Park has a member count of 4, New York Mills (MN) has 5, New York Mills (NY) has 22, East Chicago has 31, and lastly North Chicago has 45. LetsMeet can consider focusing on bringing in more members by creating more groups in these cities.*/ 



-- EVENT

SELECT 
    venue_name, city, event.venue_id, COUNT(event.venue_id) AS events_
FROM
    event
        JOIN
    venue_ ON event.venue_id = venue_.venue_id
GROUP BY venue_name
ORDER BY COUNT(venue_id) DESC
LIMIT 3;

/* LetsMeet events are hosted by many venues in different cities and there are countless of venues to choose from. Based on our analysis in the data, we have found the most popular venue to be the "The Ainsworth" located in the city of New York. There have been a total of 370 events for this venue which is almost more than the second and third popular venues combined. Significant LetsMeet events could be hosted here since it is a popular venue for the members.*/



-- CATEGORY

SELECT 
    category.category_id, category_name, SUM(members) AS num_of_membrs
FROM
    category
        JOIN
    grp ON category.category_id = grp.category_id
GROUP BY category_id
ORDER BY SUM(members) DESC
LIMIT 5;

/* LetsMeet has many groups that fall under many different categories but after our analysis we have determined the most popular categories based on their number of members. The top 5 most popular categories are Tech, Career & Business, Socializing, Arts & Culture, and Lastly Outdoors and Adventures. Tech and Career & Business are by far the most dominating categories with more than 50,000 members each. LetsMeet can use this to make more groups based on these popular categories to connect more people and create an even bigger network of members.*/




