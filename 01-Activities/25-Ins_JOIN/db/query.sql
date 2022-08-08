
-- INNER JOIN is the only one we need to worry about, and it's the one that's used most often

-- in the first line, for SELECT, you write down all the columns you want to include in the final table
-- EG... department.id , department.name, course_names.id, course_names.name, course_names.department
-- if you want to select them all use *

-- in the second line, after FROM, you just write the name of one of the tables, because it's INNER JOIN, it doesn't matter which table it is

-- for the third line, after INNER JOIN, write the name of the second table
-- then after ON, this is where you tell MySQL how to connect these two tables, if this is done wrong, the tables will not be joined the way we want them to be
-- if you're just joining to random tables that aren't related to each other, then you need to have two columns that have the exact same entrees on both tables, that'll be more than enough for MySQL to join them
-- if you're joing two tables that are related, use the foreign key in the child table and primary key in the parent table

-- https://www.w3schools.com/sql/sql_join_inner.asp

SELECT *
FROM course_names
INNER JOIN department ON course_names.department = department.id;
