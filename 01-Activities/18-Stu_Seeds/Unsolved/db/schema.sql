DROP DATABASE IF EXISTS grocery_db;
CREATE DATABASE grocery_db;

USE grocery_db;

CREATE TABLE products(
  -- whatever is incremented, must also be labelled as the primary key
  id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
  
  product_name VARCHAR(30) NOT NULL,
  category_name VARCHAR(30) NOT NULL
);
