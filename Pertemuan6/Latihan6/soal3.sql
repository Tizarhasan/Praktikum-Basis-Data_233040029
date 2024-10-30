SELECT D.DepartmentName, P.ProjectName
FROM Departments D
LEFT JOIN Projects P ON  D.DepartmentsID = P.DepartmentsID;