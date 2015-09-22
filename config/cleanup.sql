\connect twentyeyesdb zaphod
DROP SEQUENCE IF EXISTS web.post_serial;
DROP SEQUENCE IF EXISTS post_serial;
DROP TABLE IF EXISTS web.posts;
DROP SCHEMA IF EXISTS web CASCADE;
DROP SEQUENCE IF EXISTS web.image_serial;
DROP SEQUENCE IF EXISTS image_serial;
DROP TABLE IF EXISTS web.images;
\connect zaphod zaphod
DROP DATABASE IF EXISTS twentyeyesdb;
