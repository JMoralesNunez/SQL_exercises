CREATE TABLE media_users(
    id SERIAL PRIMARY KEY,
    user_name VARCHAR(120),
    user_email VARCHAR(70) UNIQUE
);

CREATE TABLE posts (
    id SERIAL PRIMARY KEY,
    id_user INT REFERENCES media_users(id),
    contenido TEXT,
    fecha TIMESTAMP
);

CREATE TABLE comments (
    id SERIAL PRIMARY KEY,
    id_user INT REFERENCES media_users(id),
    id_post INT REFERENCES posts(id),
    content TEXT,
    date TIMESTAMP
);

CREATE TABLE likes (
    id SERIAL PRIMARY KEY,
    id_user INT REFERENCES media_users(id),
    id_post INT REFERENCES posts(id)
);
