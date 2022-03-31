SELECT * FROM kunde WHERE id < 3;

SELECT * FROM kunde WHERE id < 3 OR id > 8;

SELECT * FROM bestellung WHERE id BETWEEN 3 AND 7;
SELECT * FROM bestellung WHERE id >= 3 AND id <= 7;

SELECT * FROM kunde WHERE id = 1 OR id = 3 OR id = 5 OR id = 6;
SELECT * FROM kunde WHERE id IN(1,3,5,6);

SELECT * FROM bestellung WHERE geliefert IS NULL;

SELECT * FROM produkt WHERE preis > (SELECT AVG(preis) FROM produkt);