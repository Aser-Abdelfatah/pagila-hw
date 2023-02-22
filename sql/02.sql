/*
 * Find the actor_id of every actor whose first name starts with 'j'.
 * Order the results from low to hi.
 */

SELECT ACTOR_ID FROM Actor
WHERE FIRST_NAME LIKE 'J%'
ORDER BY ACTOR_ID
;
