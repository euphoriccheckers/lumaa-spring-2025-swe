CREATE DATABASE Todo;

CREATE TABLE users {
    id SERIAL,
    username VARCHAR UNIQUE NOT NULL,
    password VARCHAR NOT NULL,
    PRIMARY KEY (id)
};

CREATE TABLE tasks {
    id SERIAL,
    userId VARCHAR,
    title VARCHAR(250) NOT NULL,
    description VARCHAR(250),
    isComplete BOOLEAN DEAULT FALSE,
    PRIMARY KEY (id),
    FOREIGN KEY (userId) REFERENCES users(id)
};

--test user
INSERT INTO users (username, password) VALUES ("euphoric", "Hello!World1.");