WITH cte AS (
    SELECT 
        Country,
        Value,
        ROW_NUMBER() OVER (ORDER BY Value DESC) AS rn
    FROM dbo.tea_production_data
    WHERE Year = 2020
      AND Item = 'Produced Tea'
)
SELECT
*, SUM(Produced_Quantity) OVER() AS Total_Quantity
FROM (
SELECT 
    CASE 
        WHEN rn <= 10 THEN Country
        ELSE 'Others'
    END AS Country,
    ROUND(SUM(Value),0) AS Produced_Quantity
FROM cte
GROUP BY 
    CASE 
        WHEN rn <= 10 THEN Country
        ELSE 'Others'
    END
) t
ORDER BY Produced_Quantity DESC