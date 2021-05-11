CREATE TABLE users (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  email TEXT,
  password TEXT,
  admin BOOLEAN,
  reservation_id INTEGER
);
