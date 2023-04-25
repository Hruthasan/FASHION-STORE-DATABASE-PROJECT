CREATE USER 'delivery_partner'@'localhost' IDENTIFIED BY 'mkyt1';
GRANT SELECT, UPDATE ON Orders TO 'delivery_partner'@'localhost';
GRANT SELECT, UPDATE ON Customer TO 'delivery_partner'@'localhost';
