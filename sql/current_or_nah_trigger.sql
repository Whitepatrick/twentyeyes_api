\connect twentyeyesdb zaphod
CREATE OR REPLACE FUNCTION swap_current_values()
RETURN type AS
BEGIN
UPDATE web.posts SET current_or_nah = 'false' WHERE post_id > 0;
END;
LANGUAGE plpgsql;
