-- Active: 1733932584439@@127.0.0.1@5432@ph
CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT check,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(100),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
);

INSERT INTO
    students (
        first_name,
        last_name,
        age,
        grade,
        course,
        email,
        dob,
        blood_group,
        country
    )
VALUES (
        'John',
        'Doe',
        20,
        'A',
        'Math',
        'john.doe@example.com',
        '2004-01-15',
        'O+',
        'USA'
    ),
    (
        'Jane',
        'Smith',
        21,
        'B',
        'History',
        'jane.smith@example.com',
        '2003-05-20',
        'A-',
        'Canada'
    ),
    (
        'Alice',
        'Johnson',
        19,
        'A',
        'Physics',
        'alice.johnson@example.com',
        '2002-11-08',
        'B+',
        'UK'
    ),
    (
        'Bob',
        'Williams',
        22,
        'C',
        'Chemistry',
        'bob.williams@example.com',
        '2001-07-03',
        'AB-',
        'Australia'
    ),
    (
        'Charlie',
        'Brown',
        20,
        'B',
        'English',
        NULL,
        '2004-03-30',
        'A+',
        'New Zealand'
    ),
    (
        'Emman',
        'Jones',
        23,
        'B',
        'Biology',
        'emma.jones@example.com',
        '2000-09-12',
        'A-',
        'USA'
    ),
    (
        'Michael',
        'Johnson',
        22,
        'C',
        'Physics',
        'michael.johnson@example.com',
        '2002-04-05',
        'O-',
        'Canada'
    ),
    (
        'Olivia',
        'Davis',
        21,
        'A',
        'Math',
        'olivia.davis@example.com',
        '2003-12-18',
        'B-',
        'UK'
    ),
    (
        'William',
        'Taylor',
        20,
        'B',
        'Chemistry',
        NULL,
        '2004-08-30',
        'A+',
        'Australia'
    ),
    (
        'Sophia',
        'Brown',
        24,
        'A',
        'English',
        'sophia.brown@example.com',
        '1999-06-25',
        'AB+',
        'New Zealand'
    ),
    (
        'Liam',
        'Miller',
        19,
        'C',
        'History',
        'liam.miller@example.com',
        '2002-02-10',
        'A-',
        'USA'
    ),
    (
        'Ava',
        'Anderson',
        22,
        'B',
        'Biology',
        'ava.anderson@example.com',
        '2000-11-15',
        'B+',
        'Canada'
    ),
    (
        'Noah',
        'Martinez',
        21,
        'A',
        'Physics',
        NULL,
        '2001-04-28',
        'O+',
        'UK'
    ),
    (
        'Isabella',
        'Clark',
        20,
        'C',
        'Chemistry',
        'isabella.clark@example.com',
        '2003-10-03',
        'A-',
        'Australia'
    ),
    (
        'Ethan',
        'Garcia',
        23,
        'B',
        'Math',
        'ethan.garcia@example.com',
        '2000-07-22',
        'B-',
        'New Zealand'
    ),
    (
        'Sophie',
        'Moore',
        22,
        'A',
        'English',
        'sophie.moore@example.com',
        '2002-12-05',
        'A+',
        'USA'
    ),
    (
        'Mia',
        'Hernandez',
        20,
        'C',
        'History',
        'mia.hernandez@example.com',
        '2004-05-18',
        'AB-',
        'Canada'
    ),
    (
        'James',
        'Young',
        21,
        'B',
        'Biology',
        'james.young@example.com',
        '2003-02-08',
        'O-',
        'UK'
    ),
    (
        'Emma',
        'Gonzalez',
        24,
        'A',
        'Physics',
        NULL,
        '1999-09-30',
        'B+',
        'Australia'
    ),
    (
        'Miam',
        'Wright',
        19,
        'C',
        'Math',
        'liam.wright@example.com',
        '2002-06-14',
        'A+',
        'New Zealand'
    );

SELECT * FROM students;
-- find student according to age in descending order
SELECT * from students ORDER BY age DESC;

-- find student from country in ascending order --
SELECT country FROM students ORDER BY country ASC;

-- no duplicate blood group
SELECT DISTINCT blood_group FROM students ORDER BY blood_group ASC;

-- data filtering
-- select student from the USA
SELECT * FROM students WHERE country = 'USA'

-- select student from A grade in physics
SELECT * FROM students WHERE grade = 'A' AND course = 'Physics'

-- select student with a specific blood group
SELECT * FROM students WHERE blood_group = 'A+'

-- select student from the USA or from Australia
SELECT * FROM students WHERE country = 'USA' OR country = 'Australia'

-- select student from the USA or from Australia and the age is 20
SELECT *
FROM students
WHERE (
        country = 'USA'
        OR country = 'Australia'
    )
    AND age = 20

-- select student with a grade 'A' or 'B' in math or physics
SELECT *
FROM students
WHERE (
        course = 'Math'
        OR course = ' Physics'
    )
    AND (
        grade = 'A'
        OR grade = 'B'
    )

-- select student older than 20
SELECT * FROM students WHERE age <= 20;

-- first name in capital letter
SELECT upper(first_name) as first_name_in_uppercase, *
FROM students;

-- scalar function

-- concat anything
SELECT concat(first_name, ' ', last_name) FROM students;

SELECT length(first_name) from students;

-- aggregate function

SELECT avg(age) FROM students;

SELECT count(*) FROM students

SELECT max(length(first_name)) FROM students;

SELECT * FROM students WHERE NOT country = 'USA';

-- use null value
SELECT * FROM students WHERE email IS NOT NULL;

-- coalesce function
SELECT COALESCE(NULL, 5);

SELECT COALESCE(email, 'Email Not found') FROM students;

-- find student from usa, uk, or canada

SELECT *
FROM students
WHERE
    country = 'USA'
    OR country = 'UK'
    OR country = 'Canada';

-- use in keywords
SELECT * FROM students WHERE country IN ('USA', 'UK', 'Canada');

SELECT * FROM students WHERE country NOT IN ('USA', 'UK', 'Canada');

SELECT * FROM students;

-- in specific range use between

SELECT * FROM students WHERE age BETWEEN 19 AND 22 ORDER BY age ASC;

SELECT *
FROM students
WHERE
    dob BETWEEN '2000-01-01' AND '2005-01-01'
ORDER BY dob;

-- like operator
SELECT * FROM students WHERE first_name LIKE '%am';

SELECT * FROM students WHERE first_name LIKE '__a%';

SELECT * FROM students WHERE first_name ILIKE 'a%';

-- limit Offset
SELECT * FROM students LIMIT 5;

SELECT * FROM students LIMIT 5 OFFSET 4

SELECT *
FROM students
WHERE
    country IN ('USA', 'UK', 'Canada')
LIMIT 3;

-- pegination
SELECT * FROM students LIMIT 5 OFFSET 5 * 0;
--for first page in front-end;
SELECT * FROM students LIMIT 5 OFFSET 5 * 1;
--for 2nd page in front-end;
SELECT * FROM students LIMIT 5 OFFSET 5 * 2;
--for 3rd page in front-end;

-- delete data from a table
DELETE FROM students WHERE grade = 'C'

DELETE FROM students WHERE grade = 'B' AND country = 'USA';

DELETE FROM students;

SELECT * FROM students;
-- update a row
UPDATE students
SET
    email = 'person@gmail.com',
    age = 50
WHERE
    student_id = 65;