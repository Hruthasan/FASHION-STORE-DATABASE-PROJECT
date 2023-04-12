SELECT Product.ProductName, Product.Brand, Product.Cost
FROM Product
INNER JOIN Store_Product ON Product.ProductID = Store_Product.ProductID
INNER JOIN Store ON Store_Product.StoreID = Store.StoreID
WHERE Store.StoreName = 'Target';




