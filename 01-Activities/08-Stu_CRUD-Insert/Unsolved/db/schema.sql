-- if books_db exists, delete it
DROP DATABASE IF EXISTS books_db;

-- create new database books_db
CREATE DATABASE books_db;

-- tell mySQL the rest of the code refers to this database 
USE books_db;

-- create table in this database
CREATE TABLE biographies (
  id INT NOT NULL,
  name VARCHAR(100) NOT NULL
);

