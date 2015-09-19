DROP DATABASE IF EXISTS twentyeyesdb;
CREATE DATABASE twentyeyesdb WITH ENCODING 'UTF8' OWNER zaphod;
\connect twentyeyesdb zaphod

DROP SCHEMA IF EXISTS web CASCADE;
CREATE SCHEMA web;

DROP TABLE IF EXISTS web.posts;
DROP SEQUENCE IF EXISTS post_serial;
DROP SEQUENCE IF EXISTS web.post_serial;

CREATE SEQUENCE web.post_serial START 100001;
CREATE TABLE web.posts (
post_id bigint NOT NULL PRIMARY KEY DEFAULT nextval('web.post_serial'),
title varchar NOT NULL,
post text NOT NULL,
date_added timestamp DEFAULT current_timestamp,
current_or_nah BOOLEAN DEFAULT 'false'
);

DROP TABLE IF EXISTS web.images;
DROP SEQUENCE IF EXISTS image_serial;
DROP SEQUENCE IF EXISTS web.image_serial;

CREATE SEQUENCE web.image_serial START 100001;
CREATE TABLE web.images (
image_id bigint NOT NULL PRIMARY KEY DEFAULT nextval('web.image_serial'),
caption text,
date_added timestamp DEFAULT current_timestamp
);
