SELECT
    COUNT(*) AS total_customers,
    SUM(Exited) AS churned_customers,
    COUNT(*) - SUM(Exited) AS retained_customers
FROM churn_data;
SELECT
    ROUND(AVG(Exited) * 100, 2) AS churn_rate
FROM churn_data;
SELECT
    Geography,
    COUNT(*) AS total_customers,
    SUM(Exited) AS churned_customers,
    ROUND(AVG(Exited) * 100, 2) AS churn_rate
FROM churn_data
GROUP BY Geography
ORDER BY churn_rate DESC;
SELECT
    Gender,
    COUNT(*) AS total_customers,
    SUM(Exited) AS churned_customers,
    ROUND(AVG(Exited) * 100, 2) AS churn_rate
FROM churn_data
GROUP BY Gender
ORDER BY churn_rate DESC;
SELECT
    IsActiveMember,
    COUNT(*) AS total_customers,
    SUM(Exited) AS churned_customers,
    ROUND(AVG(Exited) * 100, 2) AS churn_rate
FROM churn_data
GROUP BY IsActiveMember
ORDER BY churn_rate DESC;
SELECT
    NumOfProducts,
    COUNT(*) AS total_customers,
    SUM(Exited) AS churned_customers,
    ROUND(AVG(Exited) * 100, 2) AS churn_rate
FROM churn_data
GROUP BY NumOfProducts
ORDER BY NumOfProducts;
SELECT
    HasCrCard,
    COUNT(*) AS total_customers,
    SUM(Exited) AS churned_customers,
    ROUND(AVG(Exited) * 100, 2) AS churn_rate
FROM churn_data
GROUP BY HasCrCard;
SELECT
    Tenure,
    COUNT(*) AS total_customers,
    SUM(Exited) AS churned_customers,
    ROUND(AVG(Exited) * 100, 2) AS churn_rate
FROM churn_data
GROUP BY Tenure
ORDER BY Tenure;
SELECT
    Exited,
    COUNT(*) AS customers,
    ROUND(AVG(Age), 2) AS avg_age,
    ROUND(AVG(Balance), 2) AS avg_balance,
    ROUND(AVG(CreditScore), 2) AS avg_credit_score,
    ROUND(AVG(EstimatedSalary), 2) AS avg_salary
FROM churn_data
GROUP BY Exited;
SELECT
    CASE
        WHEN Age BETWEEN 18 AND 25 THEN '18-25'
        WHEN Age BETWEEN 26 AND 35 THEN '26-35'
        WHEN Age BETWEEN 36 AND 45 THEN '36-45'
        WHEN Age BETWEEN 46 AND 55 THEN '46-55'
        WHEN Age BETWEEN 56 AND 65 THEN '56-65'
        ELSE '65+'
    END AS age_group,
    COUNT(*) AS total_customers,
    SUM(Exited) AS churned_customers,
    ROUND(AVG(Exited) * 100, 2) AS churn_rate
FROM churn_data
GROUP BY age_group
ORDER BY churn_rate DESC;
SELECT
    Geography,
    IsActiveMember,
    COUNT(*) AS total_customers,
    SUM(Exited) AS churned_customers,
    ROUND(AVG(Exited) * 100, 2) AS churn_rate
FROM churn_data
GROUP BY Geography, IsActiveMember
ORDER BY churn_rate DESC;