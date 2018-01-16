DROP DATABASE IF EXISTS bamazon_db;
CREATE DATABASE bamazon_db;

USE bamazon_db;

CREATE TABLE products(
    item_id INT NOT NULL AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL,
    department_name VARCHAR(100) NOT NULL,
    price INT(10) NOT NULL,
    stock_quantity INT(10) NOT NULL,
    PRIMARY KEY (item_id)
);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("HDTV", "Electronics", 1500, 50);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Office Chair", "Furniture", 300, 100);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Computer Speakers", "Electronics", 150, 200);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Desk", "Furniture", 700, 25);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Screwdriver", "Tools", 10, 500);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Smartwatch", "Jewelry", 400, 250);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Golf Club","Sports", 500, 100);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Tent", "Outdoors", 150, 50);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Jacket", "Clothing", 100, 100);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Guitar", "Musical Instruments", 750, 25);