SELECT e1.Name AS EmployeeName, e2.Name AS ManagerName
FROM Employee e1
LEFT JOIN Employee e2 ON e1.ManagerID = e2.EmployeeID;