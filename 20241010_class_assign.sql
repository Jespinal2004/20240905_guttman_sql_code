Name:                            Data Created:
                                 Data Modified:
Purpose:This script creates a temporary database and
performs inserts, upddates and deletes                     
*/
-- Opening print Statment 
   SELECT '' AS 'Installation Starting!!!';
   --Remove the database if it is already there
   DROP DATABASE IF EXISTS testdb_20241010;

   /* Create the database after checking making sure it is 
      not already there
   */

   -- The following line is pure Standard SQL
   CREATE DATABASE IF NOT EXISTS testdb_20241010
   -- The following line is unique to MYSQL it is optional
   -- If Left out the MYSQL it is optional
   -- of the database.
   -- EXPLAIN CHARATER SET:
   -- EXPLAIN COLLATE:
   CHARACTER SET UTF8Mb4 COLLATE utf8b4_0900_ai_ci;

   --Let's see if the database is created

   SHOW DATABASES;
   SELECT '' AS 'DATABASE CREATION COMPLETED';

   -- LET's enter the database
   USE testdb_20241010;

   -- Let's create some tables
   DROP TABLE IF EXISTS STUDENT;
   CREATE TABLE IF NOT EXISTS studenet(
      student_id     INT AUTO_INCREMENT,
      first_name     VARCHAR(50) NOT NULL,
      last_name      VARCHAR(50) NOT NULL,
      phone          VARCHAR(50) NOT NULL,

      PRIMARY KEY(student_id)          
);


-- Let's see if the table has been created
SHOW TABLES;
SELECT '' AS 'TABLE CREATION COMPLETED;
-- Let's create some tables
DROP TABLES IF EXISTS company;
CREATE TABLE IF NOT EXISTS company(
   company_id        INT AUTO_INCERMENT,
   name                 VARCHAR(20) NOT NULL,
   address              VARCHAR(20) NOT NULL,
   email                VARCHAR(20) NOT NULL,
   phone

   PRIMARY KEY(company_id)
);

SHOW TABLES;
SELECT '' AS 'TABLE CREATION COMPLETED';
-- Let's create some tables
DROP TABLE IF EXISTS customer;
CREATE TABLE IF NOT EXISTS customer(
   customer_id       INT AUTO_INCREMENT,
   first_name        VARCHAR(20) NOT NULL,
   last_name         VARCHAR(20) NOT NULL,
   age               INT,
   country          VARCHAR(50),


PRIMARY KEY(customer_id)
);

SHOW TABLES;
SELECT '' AS 'TABLE CREATION COMPLETED';

--Let's add some volues 


SELECT '' AS 'INSTALLATION SCRIPT COMPLETED;
