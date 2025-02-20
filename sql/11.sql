/* 
 * Use a JOIN to list the number of copies of each film in the inventory system that begins with the letter h.
 * Use tables inventory and film.
 * Order by film title alphabetically.
 */
SELECT FILM.FILM_ID, FILM.TITLE, COUNT(INVENTORY.FILM_ID)
FROM FILM 
INNER JOIN 
INVENTORY 
ON FILM.FILM_ID = INVENTORY.FILM_ID 
GROUP BY FILM.FILM_ID 
HAVING FILM.TITLE ILIKE 'h%'
ORDER BY FILM.TITLE DESC;
