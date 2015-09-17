CREATE DATABASE twentyeyesdb WITH ENCODING 'UTF8' OWNER zaphod;

CREATE TABLE IF NOT EXISTS posts
(
  id BIGSERIAL PRIMARY KEY NOT NULL,
  title varchar NOT NULL,
  post text NOT NULL,
  date_added timestamp DEFAULT current_timestamp,
  current_or_nah BOOLEAN DEFAULT 'false'
);
