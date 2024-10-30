SELECT E.Name, S.Salaries
FROM Employee E
FULL JOIN Salaries S ON E.EmployeeID = S.EmployeeID;