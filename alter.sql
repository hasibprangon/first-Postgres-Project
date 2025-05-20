-- Active: 1733932584439@@127.0.0.1@5432@ph
SELECT * from user2;

ALTER TABLE user2 ADD COLUMN email VARCHAR(50) DEFAULT 'person@gmail.com' NOT NULL;