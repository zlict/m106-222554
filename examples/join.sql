SELECT bestellung.eingang, bestellung.geliefert, kunde.vorname, kunde.nachname, kunde.strasse, plz.plz, plz.ort 
  FROM bestellung 
  JOIN kunde ON bestellung.kunde_id = kunde.id 
  JOIN plz ON kunde.plz_id = plz.id;

SELECT kunde.email, bestellung.eingang, produkt.beschreibung, produkt_bestellung.anzahl, produkt_bestellung.preis, produkt_bestellung.anzahl * produkt_bestellung.preis AS Summe
  FROM bestellung
  JOIN produkt_bestellung ON produkt_bestellung.bestellung_id = bestellung.id
  JOIN produkt ON produkt_bestellung.produkt_id = produkt.id
  JOIN kunde ON bestellung.kunde_id = kunde.id;

UPDATE produkt
  JOIN kategorie ON produkt.kategorie_id = kategorie.id
SET produkt.preis = produkt.preis * 1.1 
WHERE kategorie.kategorie = 'Salate';