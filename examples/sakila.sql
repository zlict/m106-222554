UPDATE rental 
  SET rental_date = rental_date + INTERVAL 12 YEAR, return_date = return_date + INTERVAL 12 YEAR;

INSERT INTO category (name) VALUES ('Art');