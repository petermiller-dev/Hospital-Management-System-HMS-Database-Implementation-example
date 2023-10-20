-- Generate a customer report with customer details and their recent purchases
SELECT
    c.CustomerID,
    c.FirstName,
    c.LastName,
    c.Email,
    a.Address AS CustomerAddress,
    p.ProductName AS RecentPurchase,
    oi.PurchaseDate AS PurchaseDate
FROM Customers AS c
LEFT JOIN Addresses AS a ON c.AddressID = a.AddressID
LEFT JOIN Orders AS o ON c.CustomerID = o.CustomerID
LEFT JOIN OrderItems AS oi ON o.OrderID = oi.OrderID
LEFT JOIN Products AS p ON oi.ProductID = p.ProductID
WHERE o.OrderID IN (
    SELECT MAX(OrderID)
    FROM Orders
    GROUP BY CustomerID
)
ORDER BY c.CustomerID;
