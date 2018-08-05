DROP DATABASE IF EXISTS bamazon;

CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products (
  item_id INT UNIQUE NOT NULL AUTO_INCREMENT,
  product_name VARCHAR(45) NULL,
  department_name VARCHAR(45) NULL,
  price DECIMAL(10,2) NULL,
  stock_quantity INT NULL,
  PRIMARY KEY (id)
);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (1, "superman t-shirt", "t-shirt department", 10, 100);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (2, "superman video game", "video game department", 45, 50-**---******************;);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (3, "Batman t-shirt", "t-shirt department", 10, 100);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (4, "superman t-shirt", "t-shirt department", 10, 100);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (5, "superman t-shirt", "t-shirt department", 10, 100);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (6, "superman t-shirt", "t-shirt department", 10, 100);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (7, "superman t-shirt", "t-shirt department", 10, 100);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (8, "superman t-shirt", "t-shirt department", 10, 100);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (9, "superman t-shirt", "t-shirt department", 10, 100);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (10, "superman t-shirt", "t-shirt department", 10, 100);