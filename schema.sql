CREATE TABLE users (
  id BIGSERIAL PRIMARY KEY,
  name TEXT,
  email TEXT NOT NULL DEFAULT 'unknown'
);