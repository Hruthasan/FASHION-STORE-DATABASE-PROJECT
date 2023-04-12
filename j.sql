SELECT Product.Brand, AVG(Product.Cost) AS AvgCost
FROM Product
GROUP BY Product.Brand;
