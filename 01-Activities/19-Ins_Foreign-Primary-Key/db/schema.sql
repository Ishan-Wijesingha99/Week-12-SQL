
-- to learn about foreign and primary keys, all you need to know is at w3schools
-- https://www.w3schools.com/MySQL/mysql_primarykey.asp#:~:text=The%20PRIMARY%20KEY%20constraint%20uniquely,or%20multiple%20columns%20(fields).
-- https://www.w3schools.com/sql/sql_foreignkey.asp


DROP DATABASE IF EXISTS registrar_db;
CREATE DATABASE registrar_db;

USE registrar_db;

CREATE TABLE instructors (
  id INT NOT NULL,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  PRIMARY KEY (id)
);

CREATE TABLE courses (
  id INT,
  course_title VARCHAR(30) NOT NULL,
  instructor_id INT,
  order_details TEXT,
  FOREIGN KEY (instructor_id)
  REFERENCES instructors(id)
  ON DELETE SET NULL
);
