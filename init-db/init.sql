-- ./init-db/init.sql

-- Use the database created by the environment variable
USE mydatabase;

-- Create a 'users' table
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create a 'products' table
CREATE TABLE products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert some initial data
INSERT INTO users (username, email) VALUES
('admin', 'admin@example.com'),
('testuser', 'test@example.com');

INSERT INTO products (name, price) VALUES
('Laptop', 1200.00),
('Mouse', 25.50);