/*
 * Use a JOIN to list all films in the "Family" category.
 * Use table category, film_category, and film.
 */
SELECT FILM.TITLE 
FROM 
FILM 
WHERE FILM.FILM_ID IN 
(
    SELECT FILM_CATEGORY.FILM_ID
    FROM
    FILM_CATEGORY
    INNER JOIN
    CATEGORY
    ON FILM_CATEGORY.CATEGORY_ID = CATEGORY.CATEGORY_ID 
    WHERE CATEGORY.NAME = 'Family'

)
ORDER BY FILM.TITLE
