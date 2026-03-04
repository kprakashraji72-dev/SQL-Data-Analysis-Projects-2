-- ============================================
-- SQL Sales Data Analysis Project
-- Author: Prakashraji K
-- Description: Sales database schema creation
-- ============================================

CREATE DATABASE IF NOT EXISTS sales_db;
USE sales_db;

-- Customers Table
CREATE TABLE customers (
    customer_id   INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    email         VARCHAR(100) UNIQUE,
    city          VARCHAR(50),
    state         VARCHAR(50),
    country       VARCHAR(50) DEFAULT 'India',
    created_at    DATE
);

-- Products Table
CREATE TABLE products (
    product_id    INT AUTO_INCREMENT PRIMARY KEY,
    product_name  VARCHAR(100) NOT NULL,
    category      VARCHAR(50),
    unit_price    DECIMAL(10, 2) NOT NULL,
    stock_qty     INT DEFAULT 0
);

-- Orders Table
CREATE TABLE orders (
    order_id      INT AUTO_INCREMENT PRIMARY KEY,
    customer_id   INT NOT NULL,
    order_date    DATE NOT NULL,
    status        VARCHAR(20) DEFAULT 'Completed',
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Order Items Table
CREATE TABLE order_items (
    item_id       INT AUTO_INCREMENT PRIMARY KEY,
    order_id      INT NOT NULL,
    product_id    INT NOT NULL,
    quantity      INT NOT NULL,
    unit_price    DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (order_id)   REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);
