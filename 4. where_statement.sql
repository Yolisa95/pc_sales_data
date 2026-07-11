----------------------------------------------------------------------------------
-- WHERE STATEMENT
---------------------------------------------------------------------------------

-- 1. Show all sales that were paid for using Finance.
SELECT *
FROM [pc_database].[dbo].[pc_data_v2]
WHERE Payment_Method = 'Finance';

-- 2. Which customers bought online with a High priority order?
SELECT
    Customer_Name,
    Customer_Surname,
    Channel,
    Priority
FROM [pc_database].[dbo].[pc_data_v2]
WHERE Channel = 'Online'
  AND Priority = 'High';

-- 3. List sales in Africa where the credit score was above 700.
SELECT *
FROM [pc_database].[dbo].[pc_data_v2]
WHERE Continent = 'Africa'
  AND Credit_Score > 700;

-- 4. Show every PC sold for more than R20,000.
SELECT
    PC_Make,
    PC_Model,
    Sale_Price
FROM [pc_database].[dbo].[pc_data_v2]
WHERE Sale_Price > 20000;

-- 5. Which sales have no ship date (N/A) — not yet shipped?
SELECT *
FROM [pc_database].[dbo].[pc_data_v2]
WHERE Ship_Date = 'N/A';

-- 6. Find all repairs handled by the Repairs department.
SELECT *
FROM [pc_database].[dbo].[pc_data_v2]
WHERE Sales_Person_Department = 'Repairs';

-- 7. Show sales where we gave a discount of more than R500.
SELECT
    Customer_Name,
    Customer_Surname,
    PC_Make,
    PC_Model,
    Discount_Amount
FROM [pc_database].[dbo].[pc_data_v2]
WHERE Discount_Amount > 500;

-- 8. Which PCs were sold below their market price?
SELECT
    PC_Make,
    PC_Model,
    Sale_Price,
    PC_Market_Price
FROM [pc_database].[dbo].[pc_data_v2]
WHERE Sale_Price < PC_Market_Price;

-- 9. List all customers whose surname starts with the letter "B".
SELECT
    Customer_Name,
    Customer_Surname
FROM [pc_database].[dbo].[pc_data_v2]
WHERE Customer_Surname LIKE 'B%';

-- 10. Show North America sales that were paid in Cash.
SELECT *
FROM [pc_database].[dbo].[pc_data_v2]
WHERE Continent = 'North America'
  AND Payment_Method = 'Cash';