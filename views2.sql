USE fashion_store;
CREATE VIEW StoreInventory AS
SELECT s.StoreID, s.StoreName, s.Address AS StoreAddress, p.ProductID, p.ProductName, p.Brand, p.Cost, p.Size, p.Material
FROM Store s
JOIN Store_Product sp ON s.StoreID = sp.StoreID
JOIN Product p ON sp.ProductID = p.ProductID;
SELECT * from StoreInventory;