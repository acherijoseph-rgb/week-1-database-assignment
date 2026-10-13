-- =====================================================
-- Week 1 Assignment: Online Shop Database
-- =====================================================

-- 1. Create the database
CREATE DATABASE online_shop;

-- 2. Select the database for use
USE online_shop;

-- 3. Create a table for products
CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    stock_quantity INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 4. Create a table for customers
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    joined_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 5. Insert sample data into products
INSERT INTO products (product_name, price, stock_quantity) VALUES 
('Wireless Mouse', 25.99, 50),
('Mechanical Keyboard', 79.99, 30),
('Gaming Monitor', 199.99, 15);

-- 6. Insert sample data into customers
INSERT INTO customers (first_name, last_name, email) VALUES 
('Alice', 'Johnson', 'alice@example.com'),
('Bob', 'Smith', 'bob@example.com');

-- 7. View the data to confirm it works
SELECT * FROM products;
SELECT * FROM customers;
