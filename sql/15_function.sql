/*
 * Use a JOIN to count the number films in each category in the specified language.
 * Use table category, film_category, film, and language.
 */
CREATE OR REPLACE FUNCTION category_counts_by_language(TEXT) RETURNS TABLE(name TEXT, count BIGINT) AS
$$
SELECT CATEGORY.NAME, COUNT(FILM_CATEGORY.FILM_ID) AS sum
 FROM
 CATEGORY
 INNER JOIN
 FILM_CATEGORY
 ON CATEGORY.CATEGORY_ID = FILM_CATEGORY.CATEGORY_ID
 WHERE  FILM_CATEGORY.FILM_ID IN
 (
 SELECT FILM.FILM_ID
 FROM FILM
 INNER JOIN
 LANGUAGE
 ON FILM.LANGUAGE_ID = LANGUAGE.LANGUAGE_ID
 WHERE LANGUAGE.NAME = $1
 ) 
GROUP BY CATEGORY.NAME
;
$$
LANGUAGE SQL
IMMUTABLE
RETURNS NULL ON NULL INPUT;

SELECT * FROM category_counts_by_language('English');
SELECT * FROM category_counts_by_language('Italian');
SELECT * FROM category_counts_by_language('Japanese');
SELECT * FROM category_counts_by_language('Mandarin');
SELECT * FROM category_counts_by_language('French');
SELECT * FROM category_counts_by_language('German');
SELECT * FROM category_counts_by_language('Latin');
