
-- 1 Total Customers
SELECT COUNT(*)
FROM customer_churn;

--________________________________________
-- 2 Total Churn Customers
SELECT COUNT(*)
FROM customer_churn
WHERE Churn='Yes';

--________________________________________
-- 3 Churn Rate
SELECT
ROUND(
SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)*100/
COUNT(*),2)
AS Churn_Rate
FROM customer_churn;

--________________________________________
-- 4 Average Monthly Charges
SELECT AVG(Monthly_Charges)
FROM customer_churn;

--________________________________________
-- 5 Average Tenure
SELECT AVG(Tenure_Months)
FROM customer_churn;

--________________________________________
--6 Churn by Contract Type
SELECT Contract_Type,
COUNT(*) Customers
FROM customer_churn
GROUP BY Contract_Type;

--________________________________________
--7 Churn by Internet Service
SELECT Internet_Service,
COUNT(*)
FROM customer_churn
GROUP BY Internet_Service;

--________________________________________
--8 Churn by State
SELECT State,
COUNT(*)
FROM customer_churn
WHERE Churn='Yes'
GROUP BY State
ORDER BY 2 DESC;

--________________________________________
--9 Payment Method Wise Customers
SELECT Payment_Method,
COUNT(*)
FROM customer_churn
GROUP BY Payment_Method;

--________________________________________
--10 Subscription Type Wise Customers
SELECT Subscription_Type,
COUNT(*)
FROM customer_churn
GROUP BY Subscription_Type;
--________________________________________
--11 Highest Revenue States
SELECT State,
SUM(Total_Charges)
FROM customer_churn
GROUP BY State
ORDER BY 2 DESC;
--________________________________________
--12 Average Charges by Contract
SELECT Contract_Type,
AVG(Monthly_Charges)
FROM customer_churn
GROUP BY Contract_Type;
--________________________________________
--13 Senior Citizens Churn
SELECT Senior_Citizen,
COUNT(*)
FROM customer_churn
WHERE Churn='Yes'
GROUP BY Senior_Citizen;
--________________________________________
--14 Top 10 High Value Customers
SELECT Customer_Name,
Customer_Value
FROM customer_churn
ORDER BY Customer_Value DESC
LIMIT 10;

--________________________________________
--15 Customers Without Tech Support
SELECT *
FROM customer_churn
WHERE Tech_Support='No';
