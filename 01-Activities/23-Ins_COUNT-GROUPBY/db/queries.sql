
-- in order to use groupby, you need to understand aggregate functions
-- COUNT(), SUM(), AVG(), MIN(), MAX() are all aggregate functions
-- you pass into these functions a column

-- COUNT() returns the number of rows in the column you passed in
-- SUM() returns the sum of all the rows in the column you passed in
-- AVG() returns the average of all the rows in the column you passed in
-- MAX() returns the maximum row in the column you passed in
-- MIN() returns the minimum row in the column you passed in



SELECT *
FROM course_names;



-- after SELECT, you write which column you want to group by, in this case, it's department
-- after GROUP BY, this is written again

-- in the middle, after FROM, you write the name of the table in question

-- if you use count(id), MySQL will look at the different entrees in department, and for each different department entree, it will COUNT how many ids those entrees have
-- so department 1 has id1, id6 and id7, so it counts 3
-- department 2 has only id2, so it counts 1
-- department 3 has only id3, so it counts 1
-- department 4 has id4 and id5, so it counts 2

-- these COUNTS are stored in a new column AS number_courses
-- you can specify whatever you want to call it

-- the final table that is outputted will ALWAYS be department and number_courses (the group you specify and the new column you specify)
SELECT department, COUNT(id) AS number_courses
FROM course_names
GROUP BY department;



-- in this case we are grouping by department, so we write it after SELECT and GROUP BY

-- we are dealing with the course_names table, so we write that after FROM

-- here we use the aggregate function SUM()
-- for each different department entree, it will go to the corresponding total_enrolled rows, and sum them
-- the summed values will be stored in a new column called sum_enrolled

-- the final table will have department column and sum_enrolled column
SELECT department, SUM(total_enrolled) AS sum_enrolled
FROM course_names
GROUP BY department;
