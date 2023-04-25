CREATE USER 'warehouse_mgr'@'localhost' IDENTIFIED BY 'mkyt123';
GRANT SELECT, INSERT, UPDATE ON Product TO 'warehouse_mgr'@'localhost';
GRANT SELECT, INSERT, UPDATE ON warehouse TO 'warehouse_mgr'@'localhost';
GRANT SELECT, INSERT, UPDATE ON order_product TO 'warehouse_mgr'@'localhost';

