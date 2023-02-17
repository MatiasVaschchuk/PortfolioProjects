USE [Portfolio Projects]
GO

------"Top 10 AirBnBs in Madrid (2016) with the highest revenue per year."

SELECT TOP 10
id, name,price,  price * availability_365 AS rev_365
FROM   listing$
ORDER BY rev_365 DESC;

------"Type of Room in AirBnB Listings in Madrid, Spain (2016)"

SELECT DISTINCT room_type
FROM listing$;

------TOP 3 "Top 3 Airbnbs in Madrid (Spain) with the highest number of reviews-2016."

SELECT TOP 3
id, name, price, availability_365,neighbourhood_group, number_of_reviews
FROM listing$
ORDER BY number_of_reviews DESC;

------"The 5 most expensive AirBnBs in Madrid, Spain in 2016."

SELECT TOP 5
name, id, neighbourhood_group, price
FROM listing$
ORDER BY price DESC;

------"The 10 most in-demand and frequently fully-booked Airbnbs of the year (2016)."

SELECT TOP 10
id, name,  availability_365, neighbourhood_group, price
FROM listing$
WHERE availability_365 = 0 AND price>0 AND number_of_reviews>0
ORDER BY price DESC;

