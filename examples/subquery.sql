SELECT AVG(bestellungen) FROM (SELECT COUNT(kunde_id) AS bestellungen FROM bestellung GROUP
BY kunde_id) AS asdasdasd;

-- Wenn von einer Tabelle selektiert wird (auch wenn diese berechnet ist wie hier) braucht die Datenbank einen Namen dafür.