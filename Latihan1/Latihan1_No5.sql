WITH MaxOrderDate AS (
SELECT MAX(orderdate) AS latest_order_date
FROM Sales.Orders
)
SELECT
orderid, orderdate, custid, empid
FROM
Sales.Orders
WHERE
orderdate = (SELECT latest_order_date FROM MaxOrderDate);