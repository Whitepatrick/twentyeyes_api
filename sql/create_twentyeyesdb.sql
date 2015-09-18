DROP DATABASE IF EXISTS twentyeyesdb;
CREATE DATABASE twentyeyesdb WITH ENCODING 'UTF8' OWNER pwhite;
\connect twentyeyesdb pwhite

DROP SCHEMA IF EXISTS web CASCADE;
CREATE SCHEMA web;
