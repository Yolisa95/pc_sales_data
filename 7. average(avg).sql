---------------------------------------------------------------------------------
-- AVERAGE (AVG) STATEMENT
---------------------------------------------------------------------------------

-- 1. What is the average sale price per PC brand (make)?
SELECT
    PC_Make,
    AVG(Sale_Price) AS Average_Sale_Price
FROM [pc_database].[dbo].[pc_data_v2]
GROUP BY PC_Make;

-- 2. What is the average credit score of Online vs Offline customers?
SELECT
    Channel,
    AVG(Credit_Score) AS Average_Credit_Score
FROM [pc_database].[dbo].[pc_data_v2]
GROUP BY Channel;

-- 3. What is the average profit we make per shop?
SELECT
    Shop_Name,
    AVG(Sale_Price - Cost_Price) AS Average_Profit
FROM [pc_database].[dbo].[pc_data_v2]
GROUP BY Shop_Name;

-- 4. What is the average discount amount given per payment method?
SELECT
    Payment_Method,
    AVG(Discount_Amount) AS Average_Discount
FROM [pc_database].[dbo].[pc_data_v2]
GROUP BY Payment_Method;

-- 5. What is the average sale price for each storage type?
SELECT
    Storage_Type,
    AVG(Sale_Price) AS Average_Sale_Price
FROM [pc_database].[dbo].[pc_data_v2]
GROUP BY Storage_Type;

-- 6. What is the average cost of repairs per department?
SELECT
    Sales_Person_Department,
    AVG(Cost_of_Repairs) AS Average_Repair_Cost
FROM [pc_database].[dbo].[pc_data_v2]
GROUP BY Sales_Person_Department;

-- 7. What is the average sale price per continent?
SELECT
    Continent,
    AVG(Sale_Price) AS Average_Sale_Price
FROM [pc_database].[dbo].[pc_data_v2]
GROUP BY Continent;

-- 8. What is the average shop age across each country/state?
SELECT
    Country_or_State,
    AVG(Shop_Age) AS Average_Shop_Age
FROM [pc_database].[dbo].[pc_data_v2]
GROUP BY Country_or_State;

-- 9. What is the average finance amount per channel?
SELECT
    Channel,
    AVG(Finance_Amount) AS Average_Finance_Amount
FROM [pc_database].[dbo].[pc_data_v2]
GROUP BY Channel;

-- 10. What is the average customer credit score per priority level?
SELECT
    Priority,
    AVG(Credit_Score) AS Average_Credit_Score
FROM [pc_database].[dbo].[pc_data_v2]
GROUP BY Priority;