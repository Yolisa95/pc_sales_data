---------------------------------------------------------------------------------
-- ORDER BY STATEMENT
---------------------------------------------------------------------------------

-- 1. Show all sales ranked from the most expensive to the cheapest.
SELECT *
FROM [pc_database].[dbo].[pc_data_v2]
ORDER BY Sale_Price DESC;

ALTER TABLE [pc_database].[dbo].[pc_data_v2]
ALTER COLUMN Shop_Age INT;

-- 2. List our shops from newest to oldest based on shop age.
SELECT DISTINCT
    Shop_Name,
    Shop_Age
FROM [pc_database].[dbo].[pc_data_v2]
ORDER BY Shop_Age ASC;

-- 3. Rank customers by credit score, highest first.
SELECT
    Customer_Name,
    Customer_Surname,
    Credit_Score
FROM [pc_database].[dbo].[pc_data_v2]
ORDER BY Credit_Score DESC;

-- 4. Show all sales ordered by purchase date, most recent first.
SELECT *
FROM [pc_database].[dbo].[pc_data_v2]
ORDER BY Purchase_Date DESC;

-- 5. List every sale by discount amount, biggest discount first.
SELECT
    Customer_Name,
    Customer_Surname,
    PC_Make,
    PC_Model,
    Discount_Amount
FROM [pc_database].[dbo].[pc_data_v2]
ORDER BY Discount_Amount DESC;

-- 6. Rank PCs by profit, most profitable first.
SELECT
    PC_Make,
    PC_Model,
    Cost_Price,
    Sale_Price,
    (Sale_Price - Cost_Price) AS Profit
FROM [pc_database].[dbo].[pc_data_v2]
ORDER BY Profit DESC;

ALTER TABLE [pc_database].[dbo].[pc_data_v2]
ALTER COLUMN Finance_Amount INT;

-- 7. Show finance deals ordered by finance amount, largest first.
SELECT
    Customer_Name,
    Customer_Surname,
    Finance_Amount,
    Payment_Method
FROM [pc_database].[dbo].[pc_data_v2]
WHERE Payment_Method = 'Finance'
ORDER BY Finance_Amount DESC;

-- 8. List sales people alphabetically by surname, then name.
SELECT DISTINCT
    Sales_Person_Name,
    Sales_Person_Department
FROM [pc_database].[dbo].[pc_data_v2]
ORDER BY Sales_Person_Name ASC;

-- 9. Order sales by cost of repairs, most expensive first.
SELECT
    Customer_Name,
    Customer_Surname,
    PC_Make,
    PC_Model,
    Cost_of_Repairs
FROM [pc_database].[dbo].[pc_data_v2]
ORDER BY Cost_of_Repairs DESC;


-- 10. Sort sales by continent, then by country within each continent.
SELECT *
FROM [pc_database].[dbo].[pc_data_v2]
ORDER BY Continent ASC, Country_or_State ASC;