
CREATE TABLE Customer (
  CustomerID INT NOT NULL AUTO_INCREMENT,
  Name VARCHAR(50) NOT NULL,
  Address VARCHAR(100) NOT NULL,
  PhoneNumber VARCHAR(20) NOT NULL,
  PRIMARY KEY (CustomerID)
);

CREATE TABLE Product (
  ProductID INT NOT NULL AUTO_INCREMENT,
  ProductName VARCHAR(50) NOT NULL,
  Brand VARCHAR(50) NOT NULL,
  Cost DECIMAL(10,2) NOT NULL,
  Size VARCHAR(20) NOT NULL,
  Material VARCHAR(50) NOT NULL,
  PRIMARY KEY (ProductID)
  WarehouseID INT NOT NULL,
 FOREIGN KEY (WarehouseID) REFERENCES Warehouse(WarehouseID) 
);

CREATE TABLE Store (
  StoreID INT NOT NULL AUTO_INCREMENT,
  StoreName VARCHAR(50) NOT NULL,
  Address VARCHAR(100) NOT NULL,
  PRIMARY KEY (StoreID)
);

CREATE TABLE DeliveryPartner (
  DeliveryPartnerID INT NOT NULL AUTO_INCREMENT,
  Name VARCHAR(50) NOT NULL,
  PhoneNumber VARCHAR(20) NOT NULL,
  VehicleID VARCHAR(50) NOT NULL,
  PRIMARY KEY (DeliveryPartnerID)
);

CREATE TABLE Warehouse (
  WarehouseID INT NOT NULL AUTO_INCREMENT,
  Address VARCHAR(100) NOT NULL,
  StorageCapacity INT NOT NULL,
  PRIMARY KEY (WarehouseID)
);

CREATE TABLE Order (
  OrderID INT NOT NULL AUTO_INCREMENT,
  OrderQuantity INT NOT NULL,
  OrderInfo VARCHAR(100) NOT NULL,
  CustomerID INT NOT NULL,
  DeliveryPartnerID INT,
  PRIMARY KEY (OrderID),
  FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
  FOREIGN KEY (DeliveryPartnerID) REFERENCES DeliveryPartner(DeliveryPartnerID)
);

CREATE TABLE Store_Product (
  ProductID INT NOT NULL,
  StoreID INT NOT NULL,
  PRIMARY KEY (ProductID, StoreID),
  FOREIGN KEY (ProductID) REFERENCES Product(ProductID),
  FOREIGN KEY (StoreID) REFERENCES Store(StoreID)
);

CREATE TABLE Order_Product (
  OrderID INT NOT NULL,
  ProductID INT NOT NULL,
  PRIMARY KEY (OrderID, ProductID),
  FOREIGN KEY (OrderID) REFERENCES Order(OrderID),
  FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);


INSERT INTO Customer (CustomerID, Name, Address, PhoneNumber) VALUES
  (1, 'John Doe', '123 Main St, Anytown, USA', '555-1234'),
  (2, 'Jane Smith', '456 Elm St, Anytown, USA', '555-5678'),
  (3, 'Bob Johnson', '789 Oak St, Anytown, USA', '555-9012');

INSERT INTO Product (ProductID, ProductName, Brand, Cost, Size, Material, WarehouseID) VALUES
  (1, 'T-Shirt', 'Nike', 19.99, 'M', 'Cotton', 1),
  (2, 'Jeans', 'Levi''s', 49.99, '32x32', 'Denim', 2),
  (3, 'Running Shoes', 'Adidas', 89.99, '10', 'Synthetic', 1);

INSERT INTO Store (StoreID, StoreName, Address) VALUES
  (1, 'Anytown Mall', '100 Mall Rd, Anytown, USA'),
  (2, 'Downtown Outlet', '50 Main St, Anytown, USA'),
  (3, 'Suburban Plaza', '200 Elm St, Anytown, USA');

INSERT INTO DeliveryPartner (DeliveryPartnerID, Name, PhoneNumber, VehicleID) VALUES
  (1, 'John Smith', '555-1111', 'ABC123'),
  (2, 'Jane Doe', '555-2222', 'DEF456'),
  (3, 'Bob Williams', '555-3333', 'GHI789');

INSERT INTO Warehouse (WarehouseID, Address, StorageCapacity) VALUES
  (1, '1000 Industrial Pkwy, Anytown, USA', 1000),
  (2, '2000 Commerce Blvd, Anytown, USA', 2000),
  (3, '3000 Business St, Anytown, USA', 1500);

INSERT INTO Order (OrderID, OrderQuantity, OrderInfo, CustomerID, DeliveryPartnerID) VALUES
  (1, 2, 'Order for John Doe', 1, 1),
  (2, 1, 'Order for Jane Smith', 2, NULL),
  (3, 3, 'Order for Bob Johnson', 3, 3);

INSERT INTO Store_Product (ProductID, StoreID) VALUES
  (1, 1),
  (2, 1),
  (3, 2),
  (1, 3);

INSERT INTO Order_Product (OrderID, ProductID) VALUES
  (1, 1),
  (1, 2),
  (2, 3),
  (3, 1),
  (3, 2),
  (3, 3);

