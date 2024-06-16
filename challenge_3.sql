# Redesign

# Based on the analysis, here's a proposed redesign:
-- Create separate tables for Customers, Products, and Transactions to improve normalization:
CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100),
    surname VARCHAR(100),
    shipping_state VARCHAR(100)
);

CREATE TABLE item (
	transaction_id BIGINT,
    description VARCHAR(1000),
    retail_price DECIMAL(10, 2),
    FOREIGN KEY (transaction_id) REFERENCES Transactions(transaction_id)
);

CREATE TABLE Transactions (
    transaction_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    transaction_timestamp DATETIME,
    customer_id INT,
    loyalty_discount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
);