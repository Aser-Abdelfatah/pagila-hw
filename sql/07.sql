/*
 * List last names of actors and the number of actors who have that last name,
 * but only for names that are shared by at least two actors
 */
SELECT last_name, COUNT(last_name)
AS last_name_count
FROM actor
GROUP BY last_name
having count(last_name) > 1
ORDER by last_name_count  DESC;
