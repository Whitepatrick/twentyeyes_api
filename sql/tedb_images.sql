\connect twentyeyesdb pwhite
DROP TABLE IF EXISTS web.images;
DROP SEQUENCE IF EXISTS image_serial;

CREATE SEQUENCE image_serial START 100001;
CREATE TABLE web.images (
image_id bigint NOT NULL PRIMARY KEY DEFAULT nextval('image_serial'),
caption text,
date_added timestamp DEFAULT current_timestamp
);
