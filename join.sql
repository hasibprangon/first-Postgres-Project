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

INSERT INTO
    post (title, user_id)
VALUES (
        'Enjoying a sunny day with akash',
        2
    ),
    (
        'Batash just shared a amazing recipe',
        1
    ),
    (
        'Exploring adventures with sagor',
        4
    ),
    (
        'nodi"s wisdom always leaves me inspired',
        4
    );

SELECT * FROM "user";

SELECT * FROM post;

DROP TABLE post;

DROP TABLE "user";

SELECT title, username
FROM post
    JOIN "user" ON post.user_id = "user".id;

INSERT INTO post (id, title, user_id) VALUES ( 5 ,'This is a test post title', NULL );

SELECT * FROM post as p JOIN "user" as u ON p.user_id = u.id;
SELECT * FROM post as p LEFT JOIN "user" as u ON p.user_id = u.id;
SELECT * FROM post as p RIGHT JOIN "user" as u ON p.user_id = u.id;
