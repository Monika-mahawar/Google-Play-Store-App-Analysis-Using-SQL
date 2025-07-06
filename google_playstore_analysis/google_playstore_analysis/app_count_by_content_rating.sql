-- App_Count_By_Content_Rating
 SELECT `Content Rating`, 
       COUNT(*) AS app_Count
FROM googleplaystore 
GROUP BY `Content Rating` 
ORDER BY app_Count DESC;