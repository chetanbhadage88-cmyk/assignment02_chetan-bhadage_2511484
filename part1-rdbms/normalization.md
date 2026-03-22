## Anomaly Analysis

### Insert Anomaly
If a new product is introduced but no order exists yet, we cannot insert it into the table because product data is tied to order_id.

### Update Anomaly
If a customer's city changes (e.g., Mumbai → Pune), we must update multiple rows.

### Delete Anomaly
If we delete the last order of a customer, we lose customer information as well.

## Normalization Justification
Normalization reduces redundancy, avoids anomalies, and ensures consistency.
