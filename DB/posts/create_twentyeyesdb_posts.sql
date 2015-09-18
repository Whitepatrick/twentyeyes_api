DROP DATABASE IF EXISTS twentyeyesdb;

DROP ROLE IF EXISTS zaphod;
CREATE ROLE zaphod superuser admin login createdb createuser;

CREATE DATABASE twentyeyesdb WITH ENCODING 'UTF8' OWNER zaphod;
\connect twentyeyesdb zaphod

DROP SCHEMA IF EXISTS web CASCADE;

CREATE SEQUENCE post_serial START 100001;
CREATE SEQUENCE image_serial START 200001;

CREATE SCHEMA web
CREATE TABLE web.posts (
id post_serial PRIMARY KEY,
title varchar NOT NULL,
post text NOT NULL,
date_added timestamp DEFAULT current_timestamp,
current_or_nah BOOLEAN default 'false'
);
