-- Apps with Highest Ratings 
 SELECT 
    App, Rating
FROM
    googleplaystore
WHERE
    Rating IS NOT NULL
ORDER BY Rating DESC ;