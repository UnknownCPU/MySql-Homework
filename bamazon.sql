DROP DATABASE IF EXISTS bamazon;

CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products (
 item_id INT UNIQUE NOT NULL AUTO_INCREMENT,
 product_name VARCHAR(45) NULL,
 department_name VARCHAR(45) NULL,
 price DECIMAL(10,2) NULL,
 stock_quantity INT NULL,
 PRIMARY KEY (item_id)
);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (1, "superman t-shirt", "t-shirt department", 10, 100);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (2, "superman video game", "video game department", 45, 50);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (3, "Batman t-shirt", "t-shirt department", 10, 100);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (4, "Batman video game", "video game department", 45, 100);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (5, "Flash t-shirt", "t-shirt department", 10, 85);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (6, "Flash video game", "video game department", 30, 100);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (7, "spiderman t-shirt", "t-shirt department", 15, 100);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (8, "spiderman video game", "video game department", 45, 100);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (9, "deadpool t-shirt", "t-shirt department", 10, 100);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (10, "deadpool video game", "video game department", 30, 100);

SELECT * FROM products