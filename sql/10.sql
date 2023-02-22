/*
 * Use a JOIN to list each film and the number of actors who are listed for that film.
 * Use tables film and film_actor.
 */
SELECT FILM.TITLE, FILM.FILM_ID, COUNT(FILM_ACTOR.ACTOR_ID)
AS ACTOR_COUNT
FROM FILM
INNER JOIN
FILM_ACTOR
ON FILM.FILM_ID = FILM_ACTOR.FILM_ID
GROUP BY FILM.FILM_ID
ORDER BY COUNT(FILM_ACTOR.ACTOR_ID), FILM.TITLE;
