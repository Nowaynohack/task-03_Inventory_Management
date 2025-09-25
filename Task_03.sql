CREATE DATABASE InventoryDB;
USE InventoryDB;

-- Products Table
CREATE TABLE Products (
    ProductID INT AUTO_INCREMENT PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Quantity INT NOT NULL,
    Price DECIMAL(10,2) NOT NULL
);

-- Procedure: Add Product
DELIMITER //
CREATE PROCEDURE AddProduct (
    IN p_name VARCHAR(100),
    IN p_quantity INT,
    IN p_price DECIMAL(10,2)
)
BEGIN
    INSERT INTO Products (ProductName, Quantity, Price)
    VALUES (p_name, p_quantity, p_price);
END //
DELIMITER ;

-- Procedure: Update Stock
DELIMITER //
CREATE PROCEDURE UpdateStock (
    IN p_id INT,
    IN p_quantity INT
)
BEGIN
    UPDATE Products
    SET Quantity = Quantity + p_quantity
    WHERE ProductID = p_id;
END //
DELIMITER ;

-- =============================
-- DEMO EXECUTION
-- =============================

-- Step 1: Insert 4 products
CALL AddProduct('Laptop', 10, 55000.00);
CALL AddProduct('Phone', 25, 15000.00);
CALL AddProduct('Tablet', 8, 20000.00);
CALL AddProduct('Headphones', 50, 2000.00);

-- Step 2: Show Previous Inventory
SELECT * FROM Products;

-- Step 3: Update Stock (Add 5 Laptops and 10 Phones)
CALL UpdateStock(1, 5);   -- ProductID=1 Laptop
CALL UpdateStock(2, 10);  -- ProductID=2 Phone

-- Step 4: Show Updated Inventory

SELECT * FROM Products;
