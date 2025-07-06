 -- top 3 rated apps per category
 WITH RankedApps AS (
  SELECT App, Category, Rating,
         RANK() OVER (PARTITION BY Category ORDER BY Rating DESC) AS rnk
  FROM googleplaystore
  WHERE Rating IS NOT NULL
)
SELECT * FROM RankedApps
WHERE rnk <= 3;
