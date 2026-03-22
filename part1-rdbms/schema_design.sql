-- Customers
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL
);

-- Products
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NOT NULL
);

-- Sales Representatives
CREATE TABLE sales_reps (
    rep_id INT PRIMARY KEY,
    rep_name VARCHAR(100) NOT NULL
);

-- Orders
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    rep_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (rep_id) REFERENCES sales_reps(rep_id)
);

-- Order Items
CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Sample Inserts
INSERT INTO customers VALUES
(1,'Rushi','Mumbai'),
(2,'Amit','Delhi'),
(3,'Neha','Mumbai'),
(4,'John','Pune'),
(5,'Sara','Bangalore');

INSERT INTO products VALUES
(1,'Laptop',50000),
(2,'Phone',20000),
(3,'Shoes',3000),
(4,'Watch',5000),
(5,'Bag',2000);

INSERT INTO sales_reps VALUES
(1,'Raj'),
(2,'Simran'),
(3,'Karan'),
(4,'Anita'),
(5,'Vikram');

INSERT INTO orders VALUES
(1,1,1,'2024-01-01'),
(2,2,2,'2024-01-02'),
(3,3,1,'2024-01-03'),
(4,4,3,'2024-01-04'),
(5,5,2,'2024-01-05');

INSERT INTO order_items VALUES
(1,1,1,1),
(2,1,2,2),
(3,2,3,1),
(4,3,4,1),
(5,4,5,3);