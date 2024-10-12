SELECT
    SC.custid,
    COUNT(O.orderid) AS numorders,
    SUM(OD.qty * OD.unitPrice) AS Totalqty
FROM
    Sales.Customers AS SC
JOIN
    Sales.Orders AS O ON SC.custid = O.custid
JOIN
    Sales.OrderDetails AS OD ON O.orderid = OD.orderid
GROUP BY
	SC.custid;