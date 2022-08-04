DROP DATABASE IF EXISTS course_db;
CREATE DATABASE course_db;

USE course_db;

CREATE TABLE courses (
  -- here you're defining a column, naming it 'id', specifying it as an integer, and also specifying it cannot be null (it cannot be empty)
  id INT NOT NULL,

  -- here you're defining a column, naming it 'course_title', specifying it as a variable-length string that can be up to 30 characters long, and specifying it cannot be empty
  course_title VARCHAR(30) NOT NULL,

  -- here you're defining a column, naming it 'course_description', specifying it as text, and specifying it cannot be empty
  -- text is just a string that is basically the exact same as VARCHAR(), but it's max length is 65,535 characters long 
  course_description TEXT NOT NULL,

  -- here you're defining a column, naming it 'active', specifying it as a boolean, and specifying it cannot be empty
  active BOOLEAN NOT NULL,

  -- here you're defining a column, naming it 'date_updated', specifying it as a DATETIME, setting a DEFAULT value, giving it the value of CURRENT_TIMESTAMP which is just the current date and time, and specifying it cannot be empty
  date_updated DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL

  -- quite a few things to unpack here
  -- DATE is a data type, DATETIME is a data type, TIMESTAMP is a data type
  -- for each column, you can specify a DEFAULT value
  -- CURRENT_TIMESTAMP just returns the current date and time

  -- if you need to learn these concepts, you can revist them
);
