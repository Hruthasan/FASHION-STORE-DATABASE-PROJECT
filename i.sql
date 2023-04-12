SELECT SUM(Order.OrderQuantity * Product.Cost) AS TotalCost
FROM Order
INNER JOIN Order_Product ON Order.OrderID = Order_Product.OrderID
INNER JOIN Product ON Order_Product.ProductID = Product.ProductID;
