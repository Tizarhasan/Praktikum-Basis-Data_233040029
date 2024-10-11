SELECT
e.empid, e.firstname, e.lastname
FROM
HR.Employees e
LEFT JOIN Sales.Orders o ON e.empid = o.empid
WHERE
o.orderid IS NULL
OR o.orderdate < '2016-05-01';