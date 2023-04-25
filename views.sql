USE fashion_store;
CREATE VIEW Order_Customer_Info AS
SELECT Orders.OrderID, Orders.OrderQuantity, Orders.OrderInfo, Customer.Name, Customer.Address, Customer.PhoneNumber
FROM Orders
INNER JOIN Customer ON Orders.CustomerID = Customer.CustomerID;
SELECT * from Order_Customer_Info;