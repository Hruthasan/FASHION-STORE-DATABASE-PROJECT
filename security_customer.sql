CREATE USER 'customer'@'localhost' IDENTIFIED BY 'mkyt2';
GRANT SELECT ON Customer TO 'customer'@'localhost';
GRANT SELECT ON Orders TO 'customer'@'localhost';