/* SQL installation script
  Name: Database Project 1                     Date Created:
                                           Date Modified:
  Purpose:

*/

SYSTEM CLS;
-- Open print statement
SELECT '' AS 'Installation Starting!!!';

SELECT USER() AS 'INSTALL USER';



DROP DATABASE IF EXISTS testdb_20241015;




-- The following line is pure Standard SQL
CREATE DATABASE IF NOT EXISTS testdb_20241015
CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;


-- Let's see if the database is created
SHOW DATABASES;
SELECT '' AS 'DATABASE CREATION COMPLETED';


-- Let's enter the database
USE testdb_20241015;


-- Let's create some tables


-- Closing print statement
SELECT '' AS 'Installation Completed, check for errors!!!';

DROP TABLE IF EXISTS soldvia;
DROP TABLE IF EXISTS salestransaction;
DROP TABLE IF EXISTS `product`;  
DROP TABLE IF EXISTS `vendor`;   
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS `customer`; 
DROP TABLE IF EXISTS store;
DROP TABLE IF EXISTS region;

CREATE TABLE region(
    regionId           CHAR(1) NOT NULL,  
    regionname         VARCHAR(25),
    PRIMARY KEY(regionId)
);

CREATE TABLE store(
    storeId            VARCHAR(3) NOT NULL,  
    storezip           CHAR(15),
    regionId           CHAR(1),
    PRIMARY KEY(storeId),
    FOREIGN KEY(regionId) REFERENCES region(regionId)
);

CREATE TABLE `customer`(
    customerId         CHAR(7) NOT NULL,  
    customername       VARCHAR(15),
    customerzip        CHAR(5),
    PRIMARY KEY(customerId)
);

CREATE TABLE category(
    categoryId         CHAR(2) NOT NULL,  
    categoryname       VARCHAR(25),
    PRIMARY KEY(categoryId)
);

CREATE TABLE `vendor`(
    vendorId           CHAR(2) NOT NULL,  
    vendorname         VARCHAR(25),
    PRIMARY KEY(vendorId)
);

CREATE TABLE salestransaction(
    tId                VARCHAR(8) NOT NULL,  
    customerId         CHAR(7),
    storeId            VARCHAR(3),
    tdate              DATE,
    PRIMARY KEY(tId),
    FOREIGN KEY(customerId) REFERENCES `customer`(customerId),
    FOREIGN KEY(storeId) REFERENCES store(storeId)
);

CREATE TABLE `product`(
    productId          CHAR(3) NOT NULL,
    productname        VARCHAR(25),
    productprice       DECIMAL(7, 2),
    vendorId           CHAR(2),
    categoryId         CHAR(2),
    PRIMARY KEY(productId),
    FOREIGN KEY(vendorId) REFERENCES `vendor`(vendorId),
    FOREIGN KEY(categoryId) REFERENCES category(categoryId)
);

CREATE TABLE soldvia(
    soldviaId          INT AUTO_INCREMENT,
    productId          CHAR(3),
    tId                VARCHAR(8),
    noofitems          INT,
    PRIMARY KEY(soldviaId),
    FOREIGN KEY(productId) REFERENCES `product`(productId),
    FOREIGN KEY(tId) REFERENCES salestransaction(tId)
);


