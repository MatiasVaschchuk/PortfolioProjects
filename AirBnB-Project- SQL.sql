USE [Portfolio Projects]
GO

SELECT TOP 10
id, name,price,  price * availability_365 AS rev_365
FROM   listing$
ORDER BY rev_365 DESC


SELECT DISTINCT room_type
FROM listing$

SELECT TOP 3
id, name, price, availability_365,neighbourhood_group, number_of_reviews
FROM listing$
ORDER BY number_of_reviews DESC;

SELECT TOP 5
name, id, neighbourhood_group, price
FROM listing$
ORDER BY price DESC;

SELECT TOP 10
id, name,  availability_365, neighbourhood_group, price
FROM listing$
WHERE availability_365 = 0 AND price>0 AND number_of_reviews>0
ORDER BY price DESC;

