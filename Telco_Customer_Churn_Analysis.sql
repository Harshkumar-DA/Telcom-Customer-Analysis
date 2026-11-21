create database telco_churn;
use telco_churn;

-- Q1. How many total customers are present in the dataset?
SELECT COUNT(*) AS Total_Customers
FROM telco_churn;

-- Q2. How many customers have churned and how many have stayed?
SELECT Churn, COUNT(*) AS Total_Customers
FROM telco_churn
GROUP BY Churn;

-- Q3. What is the overall customer churn rate?
SELECT
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(*), 2
    ) AS Churn_Rate
FROM telco_churn;

-- Q4. What is the average customer tenure?
SELECT ROUND(AVG(tenure), 2) AS Average_Tenure
FROM telco_churn;

-- Q5. What is the average monthly charge of customers?
SELECT ROUND(AVG(MonthlyCharges), 2) AS Average_Monthly_Charges
FROM telco_churn;

-- Q6. Which contract type has the highest number of customers?
SELECT Contract, COUNT(*) AS Total_Customers
FROM telco_churn
GROUP BY Contract
ORDER BY Total_Customers DESC;

-- Q7. How many senior citizens are present in the dataset?
SELECT SeniorCitizen, COUNT(*) AS Total_Customers
FROM telco_churn
GROUP BY SeniorCitizen;

-- Q8. How does customer churn vary based on gender?
SELECT Gender, Churn, COUNT(*) AS Total_Customers
FROM telco_churn
GROUP BY Gender, Churn;

-- Q9. How many customers have a partner and how many do not?
SELECT Partner, COUNT(*) AS Total_Customers
FROM telco_churn
GROUP BY Partner;

-- Q10. Which tenure group has the highest number of customers?
SELECT
    CASE
        WHEN tenure <= 12 THEN '0-12 Months'
        WHEN tenure <= 24 THEN '13-24 Months'
        WHEN tenure <= 48 THEN '25-48 Months'
        ELSE '49-72 Months'
    END AS Tenure_Group,
    COUNT(*) AS Total_Customers
FROM telco_churn
GROUP BY Tenure_Group
ORDER BY Total_Customers DESC;

-- Q11. Which internet service is used by the highest number of customers?
SELECT InternetService, COUNT(*) AS Total_Customers
FROM telco_churn
GROUP BY InternetService
ORDER BY Total_Customers DESC;

-- Q12. How many customers use each payment method?
SELECT PaymentMethod, COUNT(*) AS Total_Customers
FROM telco_churn
GROUP BY PaymentMethod
ORDER BY Total_Customers DESC;

-- Q13. How many customers have subscribed to Tech Support?
SELECT TechSupport, COUNT(*) AS Total_Customers
FROM telco_churn
GROUP BY TechSupport;

-- Q14. What is the average monthly charge of churned and retained customers?
SELECT
    Churn,
    ROUND(AVG(MonthlyCharges), 2) AS Average_Monthly_Charges
FROM telco_churn
GROUP BY Churn;

-- Q15. Which contract type has the highest number of churned customers?
SELECT Contract, COUNT(*) AS Churned_Customers
FROM telco_churn
WHERE Churn = 'Yes'
GROUP BY Contract
ORDER BY Churned_Customers DESC;