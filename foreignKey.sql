-- Active: 1733932584439@@127.0.0.1@5432@ph@public
CREATE TABLE "user" (
    id SERIAL PRIMARY key,
    username VARCHAR(50) NOT NULL
);

CREATE TABLE post (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user" (id) ON DELETE CASCADE
);

INSERT INTO
    "user" (username)
VALUES ('akash'),
    ('batash'),
    ('sagor'),
    ('nodi');



INSERT INTO post(title, user_id) VALUES ('Enjoying a sunny day with akash', 2),
('Batash just shared a amazing recipe', 1),
('Exploring adventures with sagor', 4),
('nodi"s wisdom always leaves me inspired', 4);


SELECT * FROM post;

SELECT * FROM "user";

DROP TABLE post;

DROP TABLE "user";

-- deletion constraints on delete user
-- Restriction Deletion -> ON DELETE RESTRICTION / ON DELETE NO ACTION(default)
DELETE FROM "user" WHERE id = 4;

-- Cascading Deletion -> ON DELETE CASCADE
-- Setting NULL -> ON DELETE SET NULL
-- Set Default value -> ON DELETE SET DEFAULT