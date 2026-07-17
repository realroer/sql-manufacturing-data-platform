# Architecture

## High-Level Data Flow

```text
Manufacturing Systems
        │
        ▼
Operational Databases
        │
        ▼
Extraction Queries
        │
        ▼
Transformation Layer
        │
        ▼
Validation Rules
        │
        ▼
Reconciliation Framework
        │
        ▼
Reporting Views
        │
        ▼
Analytics & Dashboards
```

## Layer Responsibilities

### Manufacturing Systems

The originating production equipment and manufacturing applications that generate operational data.

### Operational Databases

Centralized SQL databases that store production, test, quality, and manufacturing records.

### Extraction Layer

Reusable SQL queries responsible for retrieving source data while minimizing duplication and maintaining consistency.

### Transformation Layer

Normalization, filtering, calculated fields, timestamp alignment, and business-rule preparation.

### Validation Layer

Ensures extracted datasets satisfy quality requirements before analytical use.

Typical validations include:

- duplicate detection
- missing values
- invalid timestamps
- unexpected status values
- orphaned records

### Reconciliation Layer

Compares independent systems to verify that production counts, yields, and failures remain consistent.

### Reporting Layer

Produces reusable datasets and SQL views for operational reporting and dashboard consumption.

### Analytics Layer

Provides trusted data for business intelligence platforms and manufacturing analytics.
