SELECT TOP (1000) [Employee_ID]
      ,[Employee_Name]
      ,[Hire_Date]
      ,[Department]
      ,[Job_Title]
      ,[Gender]
      ,[Age]
      ,[Age_Group]
      ,[Salary]
      ,[Bonus]
      ,[Performance_Score]
      ,[Status]
      ,[Tenure_Years]
      ,[Work_Location]
      ,[Education_Level]
      ,[Marital_Status]
  FROM [Hr Employee Data].[dbo].[hr_employee_ dataset]

SELECT COUNT(Employee_ID) AS Total_Employees 
FROM [hr_employee_ dataset]

SELECT Gender, 
       COUNT(Employee_ID) AS Count, 
       ROUND(COUNT(Employee_ID) * 100.0 / SUM(COUNT(Employee_ID)) OVER(), 2) AS Percentage
FROM [hr_employee_ dataset]
GROUP BY Gender

SELECT AVG(Performance_Score) AS Avg_Performance_Score FROM [hr_employee_ dataset]

SELECT Department, AVG(Performance_Score) AS Avg_Performance_Score
FROM [hr_employee_ dataset]
GROUP BY Department;
 
 SELECT AVG(Salary) AS Avg_Salary FROM [hr_employee_ dataset]

 SELECT Department, AVG(Salary) AS Avg_Salary
FROM [hr_employee_ dataset]
GROUP BY Department

SELECT SUM(Bonus) AS Total_Bonus_Paid FROM [hr_employee_ dataset]

SELECT AVG(Tenure_Years) AS Avg_Tenure FROM [hr_employee_ dataset]

SELECT Status, COUNT(Employee_ID) AS Count
FROM [hr_employee_ dataset]
GROUP BY Status;


SELECT CASE 
         WHEN Tenure_Years BETWEEN 0 AND 2 THEN '0-2 Years'
         WHEN Tenure_Years BETWEEN 3 AND 5 THEN '3-5 Years'
         WHEN Tenure_Years BETWEEN 6 AND 8 THEN '6-8 Years'
         ELSE '9+ Years' 
       END AS Tenure_Group,
       COUNT(*) AS Count
FROM [hr_employee_ dataset] 
GROUP BY Tenure_Years

SELECT YEAR(Hire_Date) AS Hire_Year, COUNT(Employee_ID) AS New_Hires
FROM [hr_employee_ dataset]
GROUP BY YEAR(Hire_Date)
ORDER BY Hire_Year;



SELECT Department, SUM(Bonus) AS Total_Bonus
FROM [hr_employee_ dataset]
GROUP BY Department;

SELECT Gender, AVG(Salary) AS Avg_Salary
FROM [hr_employee_ dataset]
GROUP BY Gender;