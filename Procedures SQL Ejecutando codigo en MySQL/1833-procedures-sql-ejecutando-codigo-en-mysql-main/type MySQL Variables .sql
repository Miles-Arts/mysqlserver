CREATE DEFINER=`root`@`localhost` PROCEDURE `new_procedure`()
BEGIN
DECLARE v VARCHAR(30) DEFAULT 'Caracteres Variable';
DECLARE i INTEGER DEFAULT 564;
DECLARE d DECIMAL(5,3) DEFAULT 897.95;
DECLARE f DATE DEFAULT '2021-01-01';
DECLARE ts TIMESTAMP DEFAULT CURRENT_TIMESTAMP();
SELECT v;
SELECT i;
SELECT d;
SELECT f;
SELECT ts;
END