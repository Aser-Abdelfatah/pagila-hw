/*
 * Use a JOIN to list the total paid by each customer.
 * List the customers alphabetically by last name.
 * Use tables payment and customer.
 */
SELECT CUSTOMER.CUSTOMER_ID, CUSTOMER.FIRST_NAME, CUSTOMER.LAST_NAME, SUM(PAYMENT.AMOUNT)
FROM 
CUSTOMER
INNER JOIN
PAYMENT
ON CUSTOMER.CUSTOMER_ID = PAYMENT.CUSTOMER_ID
GROUP BY CUSTOMER.CUSTOMER_ID
ORDER BY CUSTOMER.LAST_NAME;
