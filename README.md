# Task 3: Stored Procedures for Inventory Management

## 🎯 Objective
The goal of this task was to **automate inventory operations** like adding products and updating stock using **stored procedures** in MySQL.  
I had to create:
- A product table for inventory
- Stored procedures for operations
- Sample execution commands
- Explanation of how I did it

---

## 🛠️ Tools Used
- MySQL (Workbench / Command Line)

---

## Steps I Followed

### 1. Created Database and Table
I first created a new database `InventoryDB` and a table `Products` with:
- `ProductID` → Auto increment ID
- `ProductName` → Name of the product
- `Quantity` → Available stock
- `Price` → Price per product

### 2. Created Stored Procedures
I wrote three stored procedures:
1. **AddProduct** → To insert a new product  
2. **UpdateStock** → To increase stock of an existing product  
3. **GetProductInfo** (optional) → To check details of a product  

### 3. Inserted Data
I added 4 products to the inventory:
- Laptop (10 units)
- Phone (25 units)
- Tablet (8 units)
- Headphones (50 units)

### 4. Showed Previous Inventory
I ran:
```sql
SELECT * FROM Products;
