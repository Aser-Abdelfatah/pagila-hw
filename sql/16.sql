/*
 * Use a JOIN to order the films by most profitable,
 * where the profit is the total amount that customer have payer for the film.
 * Use tables payment, rental, inventory, and film. 
 */
SELECT FILM.TITLE, SUM(PAYMENT.AMOUNT)
AS PROFIT
FROM FILM
INNER JOIN
INVENTORY
ON FILM.FILM_ID = INVENTORY.FILM_ID
INNER JOIN
RENTAL
ON INVENTORY.INVENTORY_ID = RENTAL.INVENTORY_ID
INNER JOIN
PAYMENT
ON
RENTAL.RENTAL_ID = PAYMENT.RENTAL_ID
GROUP BY Film.TITLE
ORDER BY PROFIT DESC;
