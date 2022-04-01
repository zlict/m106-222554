SELECT film.title, language.name AS Sprache, original_language.name AS Ursprungssprache FROM film 
  INNER JOIN language ON film.language_id = language.language_id
  LEFT JOIN language AS original_language ON film.original_language_id = original_language.language_id;

UPDATE film SET original_language_id = 3 WHERE film_id = 50;

-- Weshalb wird nur noch ein oder kein Resultat angezeigt, nachdem der JOIN mit original_language hinzugefügt wurde? Was stimmt mit dem zweiten JOIN nicht?