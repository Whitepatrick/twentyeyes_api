CREATE TABLE web.images (
id SERIAL PRIMARY KEY,
title varchar NOT NULL,
post text NOT NULL,
date_added timestamp DEFAULT current_timestamp,
current_or_nah BOOLEAN default 'false'
);

ALTER SEQUENCE web.images
