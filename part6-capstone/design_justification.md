## Storage Systems

For predictive analytics, I would use a Data Warehouse to store historical treatment data. This enables efficient querying and model training.

For natural language querying, I would use a Vector Database to store embeddings of patient records.

For reporting, a Data Warehouse would be used for OLAP queries.

For real-time vitals, a time-series database or streaming platform like Kafka would be used.

## OLTP vs OLAP Boundary

OLTP systems handle real-time patient data and transactions such as admissions and updates. OLAP systems begin where analytical processing is required, such as reporting and predictions.

## Trade-offs

One major trade-off is complexity vs performance. Using multiple systems increases system complexity.

To mitigate this, a unified data pipeline and proper orchestration tools like Airflow can be used.