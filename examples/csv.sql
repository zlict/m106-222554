CREATE DATABASE babynames;

USE babynames;

CREATE TABLE babynames (
    year TINYINT(4) UNSIGNED,
    childname VARCHAR(10),
    usagepercent FLOAT,
    gender ENUM('boy', 'girl')
);

LOAD DATA LOCAL INFILE './examples/baby-names.csv' 
  INTO TABLE babynames 
  FIELDS TERMINATED BY ',' 
  LINES TERMINATED BY '\r\n'; 

SELECT * FROM babynames;

SELECT * FROM babynames
WHERE
  gender = 'girl'
INTO OUTFILE './girly-names.csv'
    FIELDS TERMINATED BY ',' ENCLOSED BY '"'
    LINES TERMINATED BY '\r\n';