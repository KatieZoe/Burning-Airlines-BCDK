CREATE TABLE reservations (
  row_id INTEGER,
  column_id INTEGER,
  user_id INTEGER,
  flight_id INTEGER
);
--seed database
INSERT INTO reservations (row_id, column_id, user_id, flight_id) VALUES ('Joel', 9, 3);
