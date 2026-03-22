## Anomaly Analysis

### Insert Anomaly
If a new product is introduced but no order exists yet, we cannot insert it into the table because product data is tied to order_id.
Example: product_name cannot exist without order_id.

### Update Anomaly
If a customer's city changes (e.g., Mumbai → Pune), we must update multiple rows.
If one row is missed → inconsistent data.

### Delete Anomaly
If we delete the last order of a customer, we lose customer information as well.
Example: deleting order_id = 101 removes customer data permanently.

---

## Normalization Justification

Keeping all data in a single table may seem simple initially, but it introduces serious issues in scalability, consistency, and maintainability. In the given dataset, customer, product, and sales representative information are repeated across multiple rows. This leads to redundancy and increases storage usage unnecessarily.

For example, if a customer places multiple orders, their name, city, and contact details are repeated for every order. If any information changes (like city), it must be updated in multiple rows, increasing the risk of inconsistent data. This is a classic update anomaly.

Similarly, insertion becomes problematic. If a new product is introduced but hasn't been ordered yet, it cannot be stored in the system because the schema requires an order_id. This limits flexibility.

Deletion also causes data loss. If the last order of a customer is removed, all associated customer details are lost unintentionally.

Normalization to 3NF solves these problems by separating entities into independent tables such as customers, products, orders, and sales representatives. This ensures data integrity, reduces redundancy, and makes the system scalable.

Hence, normalization is not over-engineering but a necessary step for building reliable systems.