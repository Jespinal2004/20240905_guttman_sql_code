 /* SQL installation script:
    Name:                        Data Created:

    Purpose:                     Data Modified:
    */
    -- Opening print Statment 
   SELECT '' AS 'Installation Starting!!!';
      Remove the database if it is already there
   DROP DATABASE IF EXISTS testdb_20240917

    /* Create the database after checking making sure it is
        not already there
    */

    -- The following line is pure Standard SQL
    CREATE DATABASE IF NOT EXISTS testdb_20240917
    -- The following line is unique to MySQL is optional
    --If left out the MySQL database will take the default settings
    --of the database.
    --EXPLAIN CHARACTER SET:
    --EXPLAIN COLLATE:
    CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;

    --Let's see if the database is created
    SHOW DATABASES;
    SELECT '' AS '###############################';

    --Let's enter the database
    USE testdb_20240917;

    -- Let's create some tables

    --Closing print Statement
    SELECT ''AS 'Installation Completed, check for errors!!!';
    
    
    CREATE TABLE orders(
    order_id          INT     AUTO_INCREMENT,
    order_date        Date;
    order_info_id     INT,
    order_value       INT,
    order_currency    VARCHAR(10),
    
    PRIMARY KEY(order_id),
    FORGEIGN KEY(order_info_id) REFRENCES order_info(order_info_id)
);