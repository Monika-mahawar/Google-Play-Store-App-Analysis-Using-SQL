-- Average_Rating_By_Genre 
SELECT 
    Genres, ROUND(AVG(Rating), 2) AS Avg_Rating
FROM
    googleplaystore
GROUP BY Genres
ORDER BY Avg_Rating DESC;