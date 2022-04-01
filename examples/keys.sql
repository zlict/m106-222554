DROP DATABASE IF EXISTS masterofthekeys;

CREATE DATABASE masterofthekeys;

USE masterofthekeys;

CREATE TABLE rank (
    id SERIAL,
    name VARCHAR(16) NOT NULL,

    PRIMARY KEY(id)
);

CREATE TABLE student (
    id SERIAL,
    rank_id BIGINT(20) UNSIGNED NOT NULL,
    forename VARCHAR(50) NOT NULL,
    surname VARCHAR(50) NOT NULL,

    PRIMARY KEY(id),
    FOREIGN KEY(rank_id) REFERENCES rank (id)
);

INSERT INTO rank (name) VALUES ('Gelber Gürtel'), ('Schwarzer Gürtel'), ('Pinker Gürtel');

-- Geht nicht -> Warum? -> Weil es den Rank nicht gibt.
INSERT INTO student (rank_id, forename, surname) VALUES (4, 'Mr.', 'Milione');

-- Funktioniert :)
INSERT INTO student (rank_id, forename, surname) VALUES (3, 'Mr.', 'Milione');