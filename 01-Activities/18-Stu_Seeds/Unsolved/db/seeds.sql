
-- here we are inserting data into the products table, but we are leaving out the id
-- we can do this because we already specified in schema.sql that id would have it's value incremented (the default starting value of this increment is 1, and it is always incremented by +1)
INSERT INTO products (product_name, category_name)
VALUES ("spinach", "produce"),
       ("peanut butter", "staples"),
       ("peas-canned", "canned goods"),
       ("ice cream", "frozen"),
       ("potato chips", "snacks");
       
