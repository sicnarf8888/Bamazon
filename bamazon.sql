-- drop db if exists, create db --
DROP DATABASE IF EXISTS bamazon_db;
CREATE DATABASE bamazon_db;

-- use bamazon db --
USE bamazon_db;

-- create products table --
CREATE TABLE products (
	item_id INT AUTO_INCREMENT NOT NULL,
  product_name VARCHAR(100) NULL,
  department_name VARCHAR(100) NULL,
  price DECIMAL(10,2) NULL,
  stock_quantity INT NULL,
  product_sales DECIMAL(10,2) DEFAULT 0,
	PRIMARY KEY (item_id)
);

-- default products vals -- 
-- populating base product sales data assuming past sales have occurred so that profitability won't be all deeply negative -- 
INSERT INTO products (product_name, department_name, price, stock_quantity, product_sales)

VALUES 

    ("Eagles, The Studio Albums 1972-1979", "Music", 21.99, 40, 1300), 
    ("Iron Man 2", "Movies", 19.99, 35, 3350), 
    ("HP Laptop", "Electronics", 949.99, 4, 3500), 
    ("Lego Marvel Spiderman", "Toys", 22.99, 100, 2480), 
		("Instant Pot Duo Nova 7 in 1 Electric Pressure Cooker", "Household", 79.99, 50, 2000), 
    ("Jacket", "Clothes", 89.99, 50, 2380), 
    ("Craftsman 52 wrench set combination", "Hardware", 138.50, 100, 1600), 
    ("Cleaveland Golf CBX 2 Wedge", "Sports Equipment", 139.99, 10, 2500), 
    ("Playstation 4", "Electronics", 449.99, 20, 8000), 
    ("The Beattles Second Album", "Music", 39.12, 20, 2100);

-- create departments table --
CREATE TABLE departments (
	department_id INT AUTO_INCREMENT NOT NULL,
  department_name VARCHAR(100) NULL,
  over_head_costs DECIMAL(10,2) NULL,
  PRIMARY KEY (department_id)
);

-- default table vals --
INSERT INTO departments (department_name, over_head_costs)

VALUES 

("Music", 2000), 
("Movies", 2000), 
("Electronics", 10000),
("Toys", 2000), 
("Household", 1000), 
("Clothes", 1000), 
("Hardware", 500),
("Sports Equipment", 1300);

-- view tables --
SELECT * FROM products;
SELECT * FROM departments;

-- inner join for profit query --
SELECT department_id, departments.department_name, over_head_costs, SUM(product_sales) AS product_sales,
	SUM(product_sales) - over_head_costs AS total_profit
FROM departments
INNER JOIN products
ON departments.department_name = products.department_name
GROUP BY department_id;

