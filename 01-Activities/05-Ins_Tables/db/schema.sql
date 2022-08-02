
-- before you create a databases, always check to see if it already exists
DROP DATABASE IF EXISTS inventory_db;
-- Creates the "inventory_db" database --
CREATE DATABASE inventory_db;

-- Makes it so all of the following code will affect inventory_db --
USE inventory_db;

-- Creates the table "product" within inventory_db --
CREATE TABLE product (
  -- Creates a numeric column called "id" which will automatically increment its default value as we create new rows --
  id INT NOT NULL,
  -- Makes a string column called "name" which cannot contain null --
  firstName VARCHAR(100) NOT NULL

  description VARCHAIN(500) NULL
);

