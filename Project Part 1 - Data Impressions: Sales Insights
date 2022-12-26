-- Answer the questions from the Sales team in this file.


-- Active Cities

SELECT 
    city, member_status
FROM
    grp_member
WHERE
    member_status = 'active'
GROUP BY city;

SELECT 
    city, member_status
FROM
    grp_member
WHERE
    member_status NOT IN ('active')
GROUP BY city;

SELECT 
    state, city
FROM
    city
WHERE
    city IN (SELECT 
            city
        FROM
            grp_member
        WHERE
            NOT member_status = 'active'
        GROUP BY city);
 
 /* What cities have active members? 
Are there any cities listed in the city table with no active members? If so, what state are those cities in?

	There are a total of 10 cities with active members and those cities are: San Francisco, New York, Chicago, West New York, West Chicago, South San Francisco, North Chicago, Chicago Heights, East Chicago, and Chicago Ridge. 
	Based on the data, there are a total of 3 cities listed with no active members; New york, San francisco, and chicago. These cities are located in New York, Illinois, and California. 
    San Francisco, New York, and Chicago are cities that have both active and not active members but when compared to number of non active members, number of active members is significantly higher.*/
    
	
                
-- Groups

SELECT 
    join_mode, COUNT(group_name) AS num_of_groups
FROM
    grp
GROUP BY join_mode;

/* How many groups are currently open, waiting for approval, and/or closed?

	There are a total of 3,602 groups currently open, 723 groups waiting for approval, and 15 groups closed. There are many groups in the LetsMeet network that are currently open compared to the groups waiting for approval and groups that are closed, this will give many members a chance to join a group and connect with others.*/

	

-- Categories

SELECT 
    COUNT(category.category_id) AS num_of_groups, category_name, grp.category_id
FROM
    category
        JOIN
    grp ON category.category_id = grp.category_id
GROUP BY category_name
ORDER BY COUNT(category.category_id) DESC
LIMIT 5;

SELECT 
    COUNT(category.category_id) AS num_of_groups, category_name, grp.category_id
FROM
    category
        JOIN
    grp ON category.category_id = grp.category_id
GROUP BY category_name
ORDER BY COUNT(category.category_id)
LIMIT 5;


/* What are the five categories that contain the most groups? What are the five categories that contain the least number of groups?

	The five categories that contain the most groups are Tech, Career & Business, Socializing, Health and Wellbeing, and lastly Language & Ethnic Identity. 
	The five categories that contain the least number of groups are Paranormal, Cars & motorcycles, Sci-Fi Fantasy, Lifestyle, and Hobbies & Crafts. 
    Tech is dominating all other categories, containing 911 groups which is more than Socializing, Health & Wellbeing, language & Ethnic identity categories combined. Whereas the Paranormal category contained the least number of groups. With only a total of 4 groups in the paranormal category, LetsMeet can consider making more groups for this category to connect more people.*/
	



-- Members

SELECT 
    COUNT(DISTINCT member_id) AS num_of_membrs
FROM
    grp_member;

SELECT 
    COUNT(DISTINCT member_id) AS num_of_membrs, city
FROM
    grp_member
WHERE
    city = 'Chicago';
    

/* How many members are there?
What percentage of members are in Chicago?

	Based on the data, there are a total of 39,980 distinct members. 
    There are a total of 8,473 members in chicago and if we divide that number by the total distinct members 8,473/39,980 we get a percentage of 21.2% of members in chicago.*/

	





