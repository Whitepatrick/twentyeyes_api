\connect twentyeyesdb zaphod
DROP TABLE IF EXISTS web.images;
CREATE TABLE web.images (
image_id bigint NOT NULL PRIMARY KEY DEFAULT nextval('image_serial'),
image_file bytea NOT NULL,
caption text,
date_added timestamp DEFAULT current_timestamp
);
