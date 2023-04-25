use fashion_store;
DELIMITER $$
CREATE TRIGGER trg_product_added
AFTER INSERT ON Product
FOR EACH ROW
BEGIN
    UPDATE Warehouse
    SET StorageCapacity = StorageCapacity + NEW.Size
    WHERE Warehouse.WarehouseID = NEW.WarehouseID;
END$$
DELIMITER ;

INSERT INTO Product (ProductName, Brand, Cost, Size, Material, WarehouseID)
VALUES ('Charger', 'Samsung', 10000, 15, 'Silicon', 1);

select * from warehouse;
