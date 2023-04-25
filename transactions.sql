use fashion_store;
select * from product;
select * from warehouse;
START TRANSACTION;
UPDATE Product
SET Cost = 1200
WHERE ProductID = 1;
UPDATE Warehouse
SET StorageCapacity = StorageCapacity - 10
WHERE WarehouseID = 1;
COMMIT;
