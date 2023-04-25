CREATE USER 'store_mgr'@'localhost' IDENTIFIED BY 'mkyt12';
GRANT SELECT, INSERT, UPDATE ON Product TO 'store_mgr'@'localhost';
GRANT SELECT, INSERT, UPDATE ON Store_Product TO 'store_mgr'@'localhost';
GRANT SELECT, INSERT, UPDATE ON  Orders TO 'store_mgr'@'localhost';
GRANT SELECT, INSERT, UPDATE ON Order_Product TO 'store_mgr'@'localhost';
