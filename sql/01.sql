/*
 * Display the first and last name of each actor in a single column in upper case letters.
 * Name the column Actor Name, and sort the results alphabetically.
 */
SELECT UPPER(CONCAT(First_name, ' ', LAST_name)) AS  "Actor Name"
From ACTOR
ORDER BY "Actor Name";
