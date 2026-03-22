-- Dimension Tables
CREATE TABLE dim_date (
    date_id INT PRIMARY KEY,
    full_date DATE,
    month INT,
    year INT
);

CREATE TABLE dim_store (
    store_id INT PRIMARY KEY,
    store_name VARCHAR(100),
    city VARCHAR(50)
);

CREATE TABLE dim_product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50)
);

-- Fact Table
CREATE TABLE fact_sales (
    sale_id INT PRIMARY KEY,
    date_id INT,
    store_id INT,
    product_id INT,
    quantity INT,
    revenue DECIMAL(10,2),
    FOREIGN KEY (date_id) REFERENCES dim_date(date_id),
    FOREIGN KEY (store_id) REFERENCES dim_store(store_id),
    FOREIGN KEY (product_id) REFERENCES dim_product(product_id)
);

-- Sample Data
INSERT INTO dim_date VALUES (1,'2024-01-01',1,2024);
INSERT INTO dim_store VALUES (1,'Store A','Mumbai');
INSERT INTO dim_product VALUES (1,'Laptop','Electronics');

INSERT INTO fact_sales VALUES
(1,1,1,1,2,100000),
(2,1,1,1,1,50000);