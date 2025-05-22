-- Active: 1733932584439@@127.0.0.1@5432@ph@public
CREATE TABLE "user" (
    id SERIAL PRIMARY key,
    username VARCHAR(50) NOT NULL
);

CREATE TABLE post (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user"(id)
)