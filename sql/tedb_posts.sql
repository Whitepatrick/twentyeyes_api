\connect twentyeyesdb pwhite
DROP TABLE IF EXISTS web.posts;
DROP SEQUENCE IF EXISTS post_serial;

CREATE SEQUENCE post_serial START 100001;
CREATE TABLE web.posts (
post_id bigint NOT NULL PRIMARY KEY DEFAULT nextval('post_serial'),
title varchar NOT NULL,
post text NOT NULL,
date_added timestamp DEFAULT current_timestamp,
current_or_nah BOOLEAN DEFAULT 'false'
);
