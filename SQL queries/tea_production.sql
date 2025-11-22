SELECT 
	*
FROM dbo.tea_production_data;

-- drop columns Domain_Code, Domain, Area_Code_M49, Element_Code, Item_Code_CPC, Year_Code, Note, Flag, Flag_Description
ALTER TABLE dbo.tea_production_data
DROP COLUMN Flag_Description;

/*Here China is being present twice. As China which includes Hong Kong and Taiwan with it and another one is China, mainland.
So lets keep only China and remove mainland, Hong Kong and Taiwan*/
DELETE FROM dbo.tea_production_data
WHERE Area IN ('China, mainland', 'China, Hong Kong SAR', 'China, Taiwan Province of');

-- Rename columns
EXEC sp_rename 'tea_production_data.Area', 'Country', 'COLUMN';

-- Update Item values
UPDATE dbo.tea_production_data
SET Item = 'Produced Tea'
WHERE Item LIKE '%ferment%';

-- Check years available
SELECT
	Country,
	Element AS Measure_Type,
	Item AS Product,
	Year,
	Unit,
	ROUND(Value, 0) AS Value
FROM dbo.tea_production_data
WHERE Item = 'Tea leaves'
ORDER BY Country, Year;
