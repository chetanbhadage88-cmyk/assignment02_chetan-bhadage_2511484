## ETL Decisions

### Decision 1 — Date Standardization
Problem: Dates were in inconsistent formats.
Resolution: Converted all dates into YYYY-MM-DD format.

### Decision 2 — Handling NULL values
Problem: Some fields had NULL values.
Resolution: Replaced NULLs with defaults or removed invalid records.

### Decision 3 — Category Normalization
Problem: Categories had inconsistent casing (electronics, Electronics).
Resolution: Standardized all values to proper case.