SELECT * FROM kunde WHERE vorname LIKE 'f%';
SELECT * FROM kunde WHERE nachname LIKE '%r';
SELECT * FROM kunde WHERE nachname LIKE '%e%';

SELECT * FROM kunde WHERE vorname LIKE '_____';
SELECT * FROM kunde WHERE CHAR_LENGTH(vorname) = 5;

SELECT * FROM kunde WHERE nachname LIKE '%e_';