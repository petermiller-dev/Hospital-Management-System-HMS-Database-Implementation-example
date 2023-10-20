-- Calculate and retrieve monthly sales data
SELECT
    YEAR(InvoiceDate) AS Year,
    MONTH(InvoiceDate) AS Month,
    SUM(Amount) AS TotalSales
FROM Invoices
GROUP BY
    YEAR(InvoiceDate),
    MONTH(InvoiceDate)
ORDER BY
    Year,
    Month;
