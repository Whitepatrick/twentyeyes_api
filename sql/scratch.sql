\connect twentyeyesdb zaphod
EXPLAIN ANALYZE SELECT title, post
FROM web.posts
WHERE post_id > 1
ORDER BY title;
