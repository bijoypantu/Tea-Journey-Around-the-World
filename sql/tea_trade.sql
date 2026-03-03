SELECT *
FROM dbo.tea_trade_data
--WHERE Weight_kg IS NULL
WHERE Country = 'Barbados'

SELECT DISTINCT Country
FROM dbo.tea_trade_data
--WHERE Country LIKE '%korea%'

-- Rename col
EXEC sp_rename 'tea_trade_data.Commodity', 'Tea_Type', 'COLUMN';

-- The data type for weight_kg is incorrect.
ALTER TABLE dbo.tea_trade_data
ALTER COLUMN Weight_kg FLOAT;

-- Check which countries imports the most
SELECT
	Country,
	SUM(Weight_kg) AS Total_Import,
	SUM(Trade_USD) AS Total_Import_Value
FROM dbo.tea_trade_data
WHERE Year = 2020 AND Flow = 'Import'
GROUP BY Country
ORDER BY Total_Import DESC;

-- Remove the unappropriate countries: Other Asia, nes; ASEAN; French Polynesia; EU-28; China, Hong Kong SAR; China, Macao SAR
DELETE FROM dbo.tea_trade_data
WHERE Country = 'China, Hong Kong SAR'

-- Simplify tea_type values
UPDATE dbo.tea_trade_data
SET Tea_Type = 'Green Tea'
WHERE Tea_Type LIKE '%green%';

-- Query to get the updated and simplified data
SELECT
	Country,
	Year,
	Tea_Type,
	Flow,
	ROUND(SUM(Trade_USD),2) AS Trade_usd,
	ROUND(SUM(Weight_kg),2) AS Weight_kg
FROM dbo.tea_trade_data
Where Year >= 2023 AND Year <= 2024
GROUP BY Country, Year, Tea_Type, Flow
ORDER BY Country, Year DESC, Tea_Type, Flow;


SELECT
	Country,
	MIN(Year) As MinYear,
	MAX(Year) AS MaxYear
FROM dbo.tea_trade_data
GROUP BY Country
ORDER BY Country

UPDATE dbo.tea_trade_data
SET Country = 'United States of America' WHERE Country = 'USA'