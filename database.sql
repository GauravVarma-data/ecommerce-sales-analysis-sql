CREATE DATABASE ecommerce_analysis;

USE ecommerce_analysis;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(50),
    country VARCHAR(50),
    signup_date DATE
);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10 , 2 )
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id)
        REFERENCES customers (customer_id)
);

CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id)
        REFERENCES orders (order_id),
    FOREIGN KEY (product_id)
        REFERENCES products (product_id)
);

INSERT INTO customers VALUES
(1, 'Rahul Sharma', 'Delhi', 'India', '2023-01-15'),
(2, 'Priya Singh', 'Mumbai', 'India', '2023-02-10'),
(3, 'Amit Verma', 'Bangalore', 'India', '2023-03-20'),
(4, 'Sneha Kapoor', 'Delhi', 'India', '2023-04-05'),
(5, 'Rohan Mehta', 'Pune', 'India', '2023-05-12'),
(6, 'Anjali Gupta', 'Mumbai', 'India', '2023-06-18'),
(7, 'Karan Malhotra', 'Chennai', 'India', '2023-07-22'),
(8, 'Neha Joshi', 'Hyderabad', 'India', '2023-08-09');

INSERT INTO products VALUES
(101, 'Laptop', 'Electronics', 60000),
(102, 'Smartphone', 'Electronics', 30000),
(103, 'Headphones', 'Electronics', 3000),
(104, 'Keyboard', 'Accessories', 1500),
(105, 'Mouse', 'Accessories', 800),
(106, 'Office Chair', 'Furniture', 12000),
(107, 'Desk', 'Furniture', 15000),
(108, 'Monitor', 'Electronics', 20000);

INSERT INTO orders VALUES
(1001, 1, '2023-01-20'),
(1002, 2, '2023-02-15'),
(1003, 3, '2023-03-25'),
(1004, 1, '2023-04-10'),
(1005, 4, '2023-04-15'),
(1006, 5, '2023-05-20'),
(1007, 2, '2023-06-05'),
(1008, 6, '2023-06-18'),
(1009, 7, '2023-07-25'),
(1010, 8, '2023-08-15'),
(1011, 3, '2023-09-10'),
(1012, 1, '2023-10-05');

INSERT INTO order_items VALUES
(1, 1001, 101, 1),
(2, 1001, 103, 2),
(3, 1002, 102, 1),
(4, 1002, 105, 2),
(5, 1003, 106, 1),
(6, 1003, 104, 1),
(7, 1004, 108, 1),
(8, 1005, 107, 1),
(9, 1005, 105, 2),
(10, 1006, 103, 1),
(11, 1006, 104, 2),
(12, 1007, 101, 1),
(13, 1008, 102, 2),
(14, 1009, 106, 1),
(15, 1010, 105, 3),
(16, 1011, 108, 1),
(17, 1012, 101, 1),
(18, 1012, 103, 1);

SELECT * FROM customers;

SELECT * FROM products;

SELECT * FROM orders;

SELECT * FROM order_items;