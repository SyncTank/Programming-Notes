CREATE DATABASE T1;
USE T1;

SELECT * FROM person LIMIT 5;
SELECT DISTINCT type FROM crime_scene_report;
SELECT * FROM person WHERE name = 'Kinsey Erickson'

SELECT * FROM crime_scene_report
WHERE type = 'murder'
  AND city = 'SQL City';

SELECT * FROM crime_scene_report
WHERE type = 'murder'
  AND city = 'SQL City';

SELECT DISTINCT city
FROM crime_scene_report
WHERE city LIKE 'Ir%';


SELECT DISTINCT city
FROM crime_scene_report
WHERE city BETWEEN 'W%' AND 'Z%';

SELECT DISTINCT city
FROM crime_scene_report
WHERE LOWER(city) ='sql city';

SELECT max(age) FROM drivers_license;
-- max min  sum avg count

SELECT * FROM drivers_license ORDER BY age LIMIT 10

-- crime scene report from the police department’s database.
-- murder crime occurred sometime on Jan 15 2018 in SQL city

SELECT * FROM crime_scene_report
WHERE city = 'SQL City'
  AND type = 'murder'
  AND date = '20180115'

SELECT * FROM person
WHERE address_street_name = 'Northwestern Dr'
ORDER BY address_number DESC LIMIT 1

SELECT * FROM person
WHERE name LIKE 'Annabel%'
  AND address_street_name LIKE 'Franklin%'
-- 14887 16371
-- join any columns but key columns are optimized for fast results

SELECT person.name, income.annual_income
FROM income
         INNER JOIN person
                    ON income.ssn = person.ssn
WHERE annual_income > 450000



SELECT name, annual_income as income,
       gender, eye_color as eyes, hair_color as hair
FROM income i
         JOIN person p
              ON i.ssn = p.ssn
         JOIN drivers_license dl
              ON p.license_id = dl.id
WHERE annual_income > 450000

SELECT *
FROM income
WHERE annual_income > 450000
-- t1
SELECT *
FROM income
         INNER JOIN person ON income.ssn = person.ssn
WHERE annual_income > 450000
-- t2

SELECT name, annual_income as income,
       gender, eye_color as eyes, hair_color as hair
FROM income i
         JOIN person p
              ON i.ssn = p.ssn
         JOIN drivers_license dl
              ON p.license_id = dl.id
WHERE annual_income > 450000



SELECT person.name, interview.transcript
FROM person JOIN interview
                 ON person.id = interview.person_id
WHERE person.id = 14887 OR person.id = 16371;

SELECT name, transcript
FROM person
         JOIN interview ON person.id = interview.person_id
WHERE person.id LIKE '14887' OR person.id LIKE '16371';


SELECT *
FROM drivers_license
         JOIN person ON drivers_license.id = person.license_id
WHERE plate_number LIKE 'H42W%'
LIMIT 5;

SELECT *
FROM person
         JOIN get_fit_now_member ON person.id = get_fit_now_member.person_id
         JOIN get_fit_now_check_in ON get_fit_now_member.id = get_fit_now_check_in.membership_id
WHERE membership_id LIKE '48Z%' AND membership_status = 'gold'
LIMIT 5;


SELECT *
FROM drivers_license
         JOIN person on drivers_license.id = person.license_id
WHERE plate_number LIKE 'H42W%'
LIMIT 10;

SELECT *
FROM person
         JOIN get_fit_now_member ON person.id = get_fit_now_member.person_id
         JOIN get_fit_now_check_in ON get_fit_now_member.id = get_fit_now_check_in.membership_id
         JOIN drivers_license ON person.license_id = drivers_license.id
WHERE membership_id LIKE '48Z%' AND membership_status = 'gold'
LIMIT 5;

SELECT *
FROM drivers_license
         JOIN person ON drivers_license.id = person.license_id
         JOIN get_fit_now_member ON person.id = get_fit_now_member.person_id
WHERE plate_number LIKE '%H42W%'
LIMIT 5;

-- I was hired by a woman with a lot of money.
-- I don't know her name but I know she's around 5'5" (65") or 5'7" (67").
-- She has red hair and she drives a Tesla Model S.
-- I know that she attended the SQL Symphony Concert 3 times in December 2017.

SELECT *
FROM person
         JOIN drivers_license ON drivers_license.id = person.license_id
         JOIN income ON income.ssn = person.ssn
         JOIN facebook_event_checkin ON person.id = facebook_event_checkin.person_id
WHERE drivers_license.hair_color LIKE 'red%'
  AND drivers_license.car_make LIKE 'Tesla%'
LIMIT 10;

INSERT INTO solution VALUES (1, 'Miranda Priestly');
SELECT value FROM solution;

-- https://mystery.knightlab.com/walkthrough.html
