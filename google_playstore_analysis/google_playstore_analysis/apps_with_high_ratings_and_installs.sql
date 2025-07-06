-- Top_Rated_Apps_With_High_Installs
SELECT App, 
       ROUND(AVG(Rating), 2) AS Avg_Rating,
       MAX(CAST(REPLACE(REPLACE(Installs, '+', ''), ',', '') AS UNSIGNED)) AS Installs
FROM googleplaystore
WHERE Rating IS NOT NULL
GROUP BY App
HAVING Installs > 5000000 AND Avg_Rating > 4.5
ORDER BY Avg_Rating DESC;