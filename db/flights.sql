CREATE TABLE flights (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  origin TEXT,
  destination TEXT,
  departure TEXT,
  arrival TEXT,
  airplane_id INTEGER
);
INSERT INTO flights (origin, destination, departure, arrival, airplane_id) VALUES ('SYD', 'MELB', '212005111700', '212005111800', 1);
INSERT INTO flights (origin, destination, departure, arrival) VALUES ('SYD', 'MELB', '212005121000', '212005121100');
INSERT INTO flights (origin, destination, departure, arrival) VALUES ('SYD', 'MELB', '212005131200', '212005131300');

INSERT INTO flights (origin, destination, departure, arrival) VALUES ('QLD', 'MELB', '212005111700', '212005111800');
INSERT INTO flights (origin, destination, departure, arrival) VALUES ('QLD', 'MELB', '212005121000', '212005121100');
INSERT INTO flights (origin, destination, departure, arrival) VALUES ('QLD', 'MELB', '212005131200', '212005131300');

INSERT INTO flights (origin, destination, departure, arrival) VALUES ('WA', 'QLD', '212005111700', '212005112100');
INSERT INTO flights (origin, destination, departure, arrival) VALUES ('WA', 'QLD', '212005111000', '212005111300');
INSERT INTO flights (origin, destination, departure, arrival) VALUES ('WA', 'QLD', '212005111200', '212005111500');
