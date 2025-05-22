-- Active: 1733932584439@@127.0.0.1@5432@ph
-- showing time zone
SHOW timezone;

-- showing time stamp
SELECT now();

-- time zone table with time stamp with and without time zone
CREATE TABLE timeZ (
    ts TIMESTAMP without time zone,
    tsz TIMESTAMP with time zone
);

INSERT INTO timeZ VALUES ( '2025-05-22 9:45:00', '2025-05-22 9:45:00' );

SELECT * FROM timeZ;

SELECT now();

-- showing current date
SELECT CURRENT_DATE;

-- showing current date using now();
SELECT now() :: date;
SELECT now() :: time;

-- using to_char
SELECT to_char(now(), 'J');

-- time interval
SELECT CURRENT_DATE - INTERVAL '1 year';

-- age calculation

SELECT age(CURRENT_DATE, '1999-10-15');

SELECT *, age(CURRENT_DATE, dob) FROM students;

-- extract year/month/day from a date using extract
SELECT extract(YEAR FROM current_date);