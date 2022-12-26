/*STEP 1 */

SELECT 
    *
FROM
    venue_;
/* address_2, country, localized_country_name, state, Rand() should be removed*/

SELECT 
    *
FROM
    grp;
/* no redudant tables*/

SELECT 
    *
FROM
    city;
/* Localized_country_name, Distance, country*/

SELECT 
    *
FROM
    event;
/* utc_offset, headcount, maybe_rsvp_count, visibility, why*/

SELECT 
    *
FROM
    category;
/* shortname, sort_name*/

SELECT 
    *
FROM
    grp_member;
/* country*/

/* Redudant columns to eliminate
- country
-localized_country_name
- address 2 
- why
- Randd()
-Shortname 
-Sort_name*/



/* STEP 2 */

ALTER TABLE venue_
DROP COLUMN country;
ALTER TABLE city
DROP COLUMN country;
ALTER TABLE grp_member
DROP COLUMN country;
/* Tables that contain the country column should be removed from the database because LetsMeet only operates in one country. Therefore the value of this can be assumed to be the same for all members.*/

ALTER TABLE venue_
DROP COLUMN localized_country_name;
ALTER TABLE city
DROP COLUMN localized_country_name;
/* Similar to the country column, localized_country_name is redundant and uninformative to the Database since we have already established that LetsMeet only operates in one country.*/

ALTER TABLE venue_
DROP COLUMN address_2;
/* address_2 column is being removed from the database because there are no values listed in the column and is redudant. We already have a column with all the Venue address and do not need this extra column in the database.*/

ALTER TABLE event
DROP COLUMN why;
/* The why column in the event table is being removed because it does not add any additional value to the table or database. All the values listed are redundant and does not help the table.*/

ALTER TABLE category
DROP COLUMN shortname;
ALTER TABLE category
DROP COLUMN sort_name;
/* The shortname and sort_name columns are being removed from the category table and LetsMeet database because they contain repetitive information from the category_name column in the table. There is no need to have 2 more columns that are going to just repeat information that we already have.*/

ALTER TABLE venue_
DROP COLUMN `RAND()`; 
/* The RAND() column is being removed because it does not provide any useful information about the venues and is redudant to the table and the database.*/



/* STEP 3 */

CREATE TABLE group_sign_ups AS SELECT DISTINCT member_id, group_id, joined FROM
    grp_member;

CREATE TABLE members AS SELECT DISTINCT (member_id), member_name, city, hometown, member_status FROM
    grp_member;

ALTER TABLE members
ADD PRIMARY KEY (member_id);

ALTER TABLE group_sign_ups
ADD FOREIGN KEY (member_id) REFERENCES members (member_id);

ALTER TABLE group_sign_ups
ADD FOREIGN KEY (group_id) REFERENCES grp (group_id);

DROP TABLE grp_member;








