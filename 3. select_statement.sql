SELECT *
FROM [pc_database].[dbo].[pc_data_v2];

----------------------------------------------------------------------------------
-- SELECT STATEMENT
----------------------------------------------------------------------------------

-- 1. Give me a full list of all customers with contact number and email.
SELECT
    Customer_Name,
    Customer_Surname,
    Customer_Contact_Number,
    Customer_Email_Address
FROM [pc_database].[dbo].[pc_data_v2];

-- 2. Show every PC we sell with its make, model, and sale price.
SELECT
    PC_Make,
    PC_Model,
    Sale_Price
FROM [pc_database].[dbo].[pc_data_v2];

-- 3. Which sales people work in our shops, and in what department?
SELECT DISTINCT
    Sales_Person_Name,
    Sales_Person_Department
FROM [pc_database].[dbo].[pc_data_v2];

-- 4. List all shops we operate with the city and country they are in.
SELECT DISTINCT
    Shop_Name,
    Province_or_City,
    Country_or_State
FROM [pc_database].[dbo].[pc_data_v2];

-- 5. Show the profit on each sale (Sale Price − Cost Price).
SELECT
    Customer_Name,
    Customer_Surname,
    PC_Make,
    PC_Model,
    Cost_Price,
    Sale_Price,
    Sale_Price - Cost_Price AS Profit
FROM [pc_database].[dbo].[pc_data_v2];

-- 7. Give me a list of all the distinct PC brands (makes) we stock.
SELECT DISTINCT
    PC_Make
FROM [pc_database].[dbo].[pc_data_v2];

-- 8. Show each sale with how much the customer saved (discount).
SELECT
    Customer_Name,
    Customer_Surname,
    PC_Make,
    PC_Model,
    Sale_Price,
    Discount_Amount 
FROM [pc_database].[dbo].[pc_data_v2];

-- 9. Display the market price versus our sale price for every PC.
SELECT
    PC_Make,
    PC_Model,
    PC_Market_Price,
    Sale_Price
FROM [pc_database].[dbo].[pc_data_v2];

-- 10. List each sale's purchase date and ship date to check delays.
SELECT
    Customer_Name,
    Customer_Surname,
    PC_Make,
    PC_Model,
    Purchase_Date,
    Ship_Date
FROM [pc_database].[dbo].[pc_data_v2];