USE example;

DROP TABLE IF EXISTS user;

CREATE TABLE user (
  id int NOT NULL AUTO_INCREMENT,
  forename varchar(100),
  surname varchar(100),
  email varchar(255) NOT NULL,
  PRIMARY KEY (id)
);

INSERT INTO user (forename, surname, email) VALUES ('Scarlett', 'Johanson', 'secret@example.com');

SELECT * FROM user;