SELECT kategorie_id, AVG(preis) FROM produkt GROUP BY kategorie_id;

SELECT kategorie_id, COUNT(*) FROM produkt GROUP BY kategorie_id;

SELECT plz_id, COUNT(*) FROM kunde GROUP BY plz_id;

SELECT kategorie_id, AVG(preis), MIN(preis), MAX(preis) FROM produkt GROUP BY kategorie_id;

SELECT kategorie_id, AVG(preis) FROM produkt WHERE kategorie_id = 2;

SELECT AVG(preis) FROM produkt;
SELECT kategorie_id, AVG(preis) FROM produkt GROUP BY kategorie_id HAVING AVG(preis) > (SELECT AVG(preis) FROM produkt);

SELECT k.plz_id, k.vorname, p.ort 
  FROM kunde AS k 
  JOIN plz AS p ON k.plz_id = p.id;

SELECT plz.ort FROM bestellung 
  JOIN kunde ON bestellung.kunde_id = kunde.id 
  JOIN plz ON kunde.plz_id = plz.id;

SELECT anzahl, preis, anzahl * preis AS Summe FROM produkt_bestellung;

SELECT produkt.name, kategorie.kategorie FROM produkt 
  JOIN kategorie ON produkt.kategorie_id = kategorie.id;