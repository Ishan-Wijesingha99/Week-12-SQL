-- Write your schema here --
DROP DATABASE IF EXISTS productsCategories_db;
CREATE DATABASE productsCategories_db;

USE productsCategories_db;

CREATE TABLE products (
  id INT NOT NULL,
  product_name VARCHAR(30) NOT NULL,
  category_name VARCHAR(100) NOT NULL,
  price INT NOT NULL,
  in_stock BOOLEAN NOT NULL
);

CREATE TABLE categories (
  id INT NOT NULL,
  category_name VARCHAR(30) NOT NULL,
);

