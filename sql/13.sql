/*
 * The music of Queen and Kris Kristofferson have seen an unlikely resurgence.
 * As an unintended consequence, films starting with the letters K and Q have also soared in popularity.
 * Use a JOIN to display the titles of movies starting with the letters K and Q whose language is English.
 * Use tables film and language, and order the results alphabetically by film title.
 */
SELECT FILM.FILM_ID, FILM.TITLE, FILM.LANGUAGE_ID, LANGUAGE.NAME
FROM FILM
INNER JOIN
LANGUAGE
ON FILM.LANGUAGE_ID = LANGUAGE.LANGUAGE_ID
WHERE LANGUAGE.NAME = 'English' AND (FILM.TITLE LIKE 'K%' OR FILM.TITLE LIKE 'Q%')
ORDER BY FILM.TITLE;

