SELECT Product.ProductName, COUNT(*) AS SalesCount
FROM Product
INNER JOIN Order_Product ON Product.ProductID = Order_Product.ProductID
GROUP BY Product.ProductName
ORDER BY SalesCount DESC
LIMIT 5;

