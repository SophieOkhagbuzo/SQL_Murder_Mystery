--Q1 write your SQL queries to see the different tables and the content

SELECT *
FROM crime_scene_report
Where type = 'murder' and city ='SQL City';

SELECT *
FROM crime_scene_report
Where type = 'murder'
and date = '20180115'
and city = 'SQL City';


--Since the witness lives on the last house on the street.(Morty schapiro)
select *
from person
where address_street_name = 'Northwestern Dr'
order by address_number DESC; 

--The other witness is called 'annabel' 
select *
from person
WHERE name like '%Annabel%' AND address_street_name= 'Franklin Ave'

--look for their interview with the police
select *
from interview
where PERSON_ID in ( '16371', '14887')

-- annabel saw it happen and recognized the killer from gym on the jan 9th...morty saw he had a getgym bag 
--id 48z...only for gold members and plate no 'H42W'

SELECT *
from get_fit_now_check_in
where check_in_date = '20180109'

--member is 90081 and she came in at 4pm and left at 5pm

SELECT *
FROM get_fit_now_member
WHERE membership_status='gold'
and id like '%48z%'

--we found jeremy bowers and Joe germuska 

select *
from drivers_license
where plate_number like '%h42w%'
--found 2 males with id '423327' and '664760'

SELECT *
FROM person
WHERE license_id IN ('423327', '664760')

--jeremy bowers fits the description, the other person doesn't match





