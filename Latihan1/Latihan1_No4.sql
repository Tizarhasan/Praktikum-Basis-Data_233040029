SELECT c.custid, c.companyname, o.orderid, o.orderdate
FROM
	Sales.Customers c
JOIN 
	Sales.Orders o
ON 
	c.custid = o.custid
ORDER BY
	c.custid;