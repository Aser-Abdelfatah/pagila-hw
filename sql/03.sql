/*
 * Find all last names of actors whose last names contain the letters LI (case insensitive).
 * Order results alphabetically.
 */
SELECT LAST_NAME FROM ACTOR
WHERE LAST_NAME LIKE '%LI%'
ORDER BY LAST_NAME;
