
# 📊 SQL Database Projects – Insurance & Library Management Systems

This repository contains structured and practical SQL projects designed for managing real-world data in insurance and library domains. These projects allow learners to practice DDL, DML, DCL, and TCL commands, and understand relationships, joins, and data modeling using PostgreSQL.

---

## 📂 Repository Structure

### ✅ **insurance_database**
Database for basic insurance operations and problem-solving with SQL.

- `create_tables.sql` → Creates tables for insurance-related data.
- `insert_data.sql` → Inserts sample data into the tables.
- `problem1.sql` → Data cleanup using `TRUNCATE` and `DELETE`.
- `problem2.sql` → Dropping obsolete tables.
- `problem3.sql` → Joins for retrieving customer and policy data.
- `problem4.sql` → Complex joins involving multiple tables.
- `problem5.sql` → Combined cleanup and reporting queries.

---

### ✅ **insurance_domain_database**
Advanced insurance system capturing customer interactions, policy management, claims, and processing.

- `create_tables.sql` → Table creation scripts with foreign keys and constraints.
- `ddl_queries.sql` → Modify schema using `ALTER` and `DROP`.
- `dml_queries.sql` → Insert, update, and delete data records.
- `insert_data.sql` → Sample data population.
- `join_queries.sql` → Complex data retrieval across multiple tables.

---

### ✅ **library_management_database**
A comprehensive library management database to handle books, authors, members, loans, and staff operations.

- `create_tables.sql` → Schema creation for library management.
- `ddl_queries.sql` → Structural changes to tables.
- `dml_queries.sql` → Managing data entries.
- `insert_data.sql` → Sample data for books, members, and loans.
- `join_queries.sql` → Data retrieval using joins for reporting and analysis.

---

## 📚 Problem Statements

### ✅ **Insurance Database Problems**
1. **Data Cleanup**
   - Use `TRUNCATE` to clear temporary data.
   - Use `DELETE` to remove old claims data older than 5 years.

2. **Drop Unneeded Tables**
   - Permanently delete obsolete tables using `DROP`.

3. **Join Queries**
   - Retrieve customer and policy information using `INNER JOIN` and `LEFT JOIN`.

4. **Complex Reporting**
   - Generate reports joining customers, policies, agents, and claims using multiple join types.

5. **Combined Cleanup and Reporting**
   - Remove closed claims with zero amount, drop temporary tables, and retrieve agent-policy relationships.

---

### ✅ **Library Management Database Problems**
1. **Manage Books**
   - Add new columns, rename, or drop existing columns.

2. **Manage Members**
   - Update contact details and remove unused fields.

3. **Loan Tracking**
   - Insert, delete, and retrieve loan records.

4. **Reporting**
   - Join tables to track loans, authorship, and available copies by genre.

---

### ✅ **Insurance Domain Database Problems**
1. **Schema Changes**
   - Add, rename, or remove columns in tables.

2. **Data Manipulation**
   - Update premiums, delete claims, and insert policy assignments.

3. **Data Retrieval**
   - Retrieve customers, policies, agents, and claim reports using joins.

---

## 📖 Database Schemas

### **Insurance Database Schema**
- `Customers`, `Agents`, `Policies`, `Claims`, `PolicyAssignments`
- Relationships:
  - Customers ↔ Policies → One-to-Many
  - Policies ↔ Claims → One-to-Many
  - Customers ↔ PolicyAssignments → Many-to-Many
  - Agents ↔ Policies → One-to-Many

### **Library Management Database Schema**
- `Books`, `Authors`, `Members`, `Loans`, `Staff`
- Relationships:
  - Books ↔ Authors → Many-to-One
  - Loans ↔ Books, Members → Many-to-One

### **Insurance Domain Database Schema**
- `Customers`, `Policies`, `Claims`, `Agents`, `PolicyAssignments`, `ClaimProcessing`
- Relationships:
  - Customers ↔ Policies → Many-to-Many
  - Policies ↔ Claims → One-to-Many
  - Claims ↔ ClaimProcessing → One-to-Many
  - Agents ↔ Policies → One-to-Many

---

## 🔑 Key SQL Concepts Practiced

✔ `CREATE`, `ALTER`, `DROP`  
✔ `INSERT`, `UPDATE`, `DELETE`, `SELECT`  
✔ `JOIN` operations: `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`  
✔ Data cleanup techniques using `TRUNCATE` and `DELETE`  
✔ Managing complex relationships and many-to-many mappings  
✔ Using transactions, indexing, and constraints for optimized queries  

---

## 🚀 How to Use

1. **Clone the repository**
   ```bash
   git clone https://github.com/Honey-R-Shetty/SQL.git
   
````

2. **Open PostgreSQL** and create the respective databases.

3. **Run the scripts** in the order required:

   * `create_tables.sql`
   * `insert_data.sql`
   * Problem or join query scripts.

4. Explore and modify queries to practice advanced concepts.

````

## 📂 Technologies Used

* PostgreSQL
* SQL Scripts (`.sql`)
* ER Diagrams and Schema Design
* Data Modeling for real-world scenarios

````

## ✍ Author

**Honey R Shetty**

GitHub: [Honey-R-Shetty]

