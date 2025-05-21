-- Active: 1733932584439@@127.0.0.1@5432@ph
SELECT * from user2;
-- add column
ALTER TABLE user2 ADD COLUMN email VARCHAR(50) DEFAULT 'person@gmail.com' NOT NULL;

-- insert value
INSERT INTO user2 VALUES (6, 'maruf', 27, 'maruf@hotmail.com');
-- delete column
ALTER TABLE user2 DROP COLUMN email;
-- rename column
ALTER TABLE user2 RENAME COLUMN  user_age to age;
-- type change
ALTER TABLE user2 ALTER COLUMN user_name TYPE VARCHAR(50);
-- add constraints
ALTER TABLE user2 
ALTER COLUMN age set NOT NULL;
-- delete constraints
ALTER TABLE user2 
ALTER COLUMN age DROP NOT NULL;

-- add a unique column
ALTER TABLE user3 
ADD CONSTRAINT unique_user2_age PRIMARY KEY(id);


DROP Table user2;

SELECT * FROM user3;

INSERT INTO user3 VALUES(4, 'hridoy', 24), (5, 'maruf', 25);

ALTER TABLE user3 DROP constraint unique_user2_age
