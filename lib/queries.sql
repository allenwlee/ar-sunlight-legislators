-- Given a state, I can obtain a list of representatives in the House for that state.

select * from politicians
where state = CA and title = 'Rep'


-- Given a state, I can obtain the two senators for that state.

select * from politicians
where state = CA and title = 'Sen'

-- Given a political party, I can obtain a list of senators with that party affiliation.

select * from politicians
where party = 'republican' and title = 'Sen'

-- Given a political party, I can obtain a list of representatives in the House with that party affiliation.

select * from politicians
where party = 'republican' and title = 'Rep'


-- Given a senator or representative, I can obtain any of the following attributes: name, email, phone, fax, website, party affiliation, gender, birthdate, and twitter_id.

select name, email from politicians where name like ''


-- Given a senator or representative, I can determine whether s/he is currently actively in office.

select 'in office' where name like ''

-- Given any state, first print out the senators for that state (sorted by last name), then print out the representatives (also sorted by last name). Include the party affiliation next to the name. The output might look something like this:
-- Senators:
--   Barbara Boxer (D)
--   Diane Feinstein (D)
-- Representatives:
--   Xavier Becerra (D)
--   Howard L. Berman (D)
--   Brian P. Bilbray (R)
--   (... etc., etc., ...)
--   Diane E. Watson (D)

select name, party from senators
where state = CA

select name, party from representatives
where state = CA

-- Given a gender, print out what number and percentage of the senators are of that gender as well as what number and percentage of the representatives, being sure to include only those congresspeople who are actively in office, e.g.:

-- Male Senators: 83 (83%)
-- Male Representatives: 362 (83%)



-- Print out the list of states along with how many active senators and representatives are in each, in descending order (i.e., print out states with the most congresspeople first).



-- CA: 2 Senators, 53 Representative(s)
-- TX: 2 Senators, 32 Representative(s)
-- NY: 2 Senators, 29 Representative(s)
-- (... etc., etc., ...)
-- WY: 2 Senators, 1 Representative(s)
-- For Senators and Representatives, count the total number of each (regardless of whether or not they are actively in office).

-- Senators: 137
-- Representatives: 603
-- Now use ActiveRecord to delete from your database any congresspeople who are not actively in office, then re-run your count to make sure that those rows were deleted.

-- Senators: 100
-- Representatives: 435
