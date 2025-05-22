-- Active: 1733932584439@@127.0.0.1@5432@ph@public
SELECT * FROM students;

SELECT country, count(*), avg(age) FROM students GROUP BY country;

SELECT country, count(*), avg(age)
FROM students
GROUP BY
    country
HAVING
    avg(age) > 20.60;

-- filter groups using having to show only countries with average age above 20.60
SELECT country, count(*), avg(age)
FROM students
GROUP BY
    country
HAVING
    avg(age) > 20.60;

-- count students born each year
SELECT extract(
        year
        from dob
    ) as birth_year, count(*)
FROM students
GROUP BY
    birth_year;