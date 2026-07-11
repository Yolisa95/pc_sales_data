---------------------------------------------------------------------------------
-- HAVING STATEMENT
---------------------------------------------------------------------------------
-- 1. Which continents have an average sale price above R18,000?
SELECT
    Continent,
    AVG(Sale_Price) AS Average_Sale_Price
FROM [pc_database].[dbo].[pc_data_v2]
GROUP BY Continent
HAVING AVG(Sale_Price) > 18000;

-- 2. Which departments made more than one sale?
SELECT
    Sales_Person_Department,
    COUNT(*) AS Total_Sales
FROM [pc_database].[dbo].[pc_data_v2]
GROUP BY Sales_Person_Department
HAVING COUNT(*) > 1;

-- 3. Which sales people gave out more than R1,000 in total discounts?
SELECT
    Sales_Person_Name,
    SUM(Discount_Amount) AS Total_Discount
FROM [pc_database].[dbo].[pc_data_v2]
GROUP BY Sales_Person_Name
HAVING SUM(Discount_Amount) > 1000;

-- 4. Which PC brands have an average profit greater than R3,000?
SELECT
    PC_Make,
    AVG(Sale_Price - Cost_Price) AS Average_Profit
FROM [pc_database].[dbo].[pc_data_v2]
GROUP BY PC_Make
HAVING AVG(Sale_Price - Cost_Price) > 3000;

-- 5. Which shops generated total sales of more than R30,000?
SELECT
    Shop_Name,
    SUM(Sale_Price) AS Total_Sales
FROM [pc_database].[dbo].[pc_data_v2]
GROUP BY Shop_Name
HAVING SUM(Sale_Price) > 30000;

-- 6. Which payment methods were used in more than 2 sales?
SELECT
    Payment_Method,
    COUNT(*) AS Total_Transactions
FROM [pc_database].[dbo].[pc_data_v2]
GROUP BY Payment_Method
HAVING COUNT(*) > 2;

-- 7. Which countries/states have an average credit score above 650?
SELECT
    Country_or_State,
    AVG(Credit_Score) AS Average_Credit_Score
FROM [pc_database].[dbo].[pc_data_v2]
GROUP BY Country_or_State
HAVING AVG(Credit_Score) > 650;

-- 8. Which channels have an average sale price above R20,000?
SELECT
    Channel,
    AVG(Sale_Price) AS Average_Sale_Price
FROM [pc_database].[dbo].[pc_data_v2]
GROUP BY Channel
HAVING AVG(Sale_Price) > 20000;

-- 9. Which storage types appear in more than 3 sales?
SELECT
    Storage_Type,
    COUNT(*) AS Total_Sales
FROM [pc_database].[dbo].[pc_data_v2]
GROUP BY Storage_Type
HAVING COUNT(*) > 3;

-- 10. Which continents have total repair costs greater than R3,000?
SELECT
    Continent,
    SUM(Cost_of_Repairs) AS Total_Repair_Cost
FROM [pc_database].[dbo].[pc_data_v2]
GROUP BY Continent
HAVING SUM(Cost_of_Repairs) > 3000;

SELECT *
FROM [pc_database].[dbo].[pc_data_v2];

-- Bonus Question
-- For each country or state, show the number of sales and the average sale price. Only include states averaging above R15,000, and rank them from the highest average sale price down.

SELECT
    Country_or_State,
    COUNT(*) AS Number_of_Sales,
    AVG(Sale_Price) AS Average_Sale_Price
FROM [pc_database].[dbo].[pc_data_v2]
GROUP BY Country_or_State
HAVING AVG(Sale_Price) > 15000
ORDER BY AVG(Sale_Price) DESC;