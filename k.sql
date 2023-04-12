SELECT Product.ProductName, Product.Size, Warehouse.StorageCapacity
FROM Product
INNER JOIN Warehouse ON Product.WarehouseID = Warehouse.WarehouseID
WHERE Warehouse.WarehouseID = 1;
