CREATE TABLE Departments (
    DepartmentsID INT IDENTITY (1,1) PRIMARY KEY,
    DepartmentName VARCHAR(50) NOT NULL
);

CREATE TABLE Employee (
    EmployeeID INT IDENTITY (1,1) PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    DepartmentsID INT NOT NULL,
    ManagerID INT NOT NULL,
    FOREIGN KEY (DepartmentsID) REFERENCES Departments(DepartmentsID),
    FOREIGN KEY (ManagerID) REFERENCES Employee(EmployeeID)
);

CREATE TABLE Salaries (
    EmployeeID INT,
    Salaries DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
    ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Projects (
    ProjectsID INT IDENTITY (1,1) PRIMARY KEY,
    ProjectName VARCHAR(50) NOT NULL,
    DepartmentsID INT NOT NULL,
    FOREIGN KEY (DepartmentsID) REFERENCES Departments(DepartmentsID)
    ON UPDATE CASCADE ON DELETE CASCADE
);
