# 📌 SQL Developer Internship – Task 2
## Data Insertion and Handling NULLs

### 📖 Objective
Practice **DML operations**:
- `INSERT` (full values, partial values, NULL handling)
- `UPDATE` (single & multiple rows)
- `DELETE` (with conditions)
- Use of `DEFAULT` & `NOT NULL`
- Verify results using `SELECT`

### 🛠 Tools
- DB Fiddle
- SQLiteStudio / MySQL

### 📂 Files
- `task2.sql`
- `README.md`
- `Task2_README.pdf`

### 🗂 Schema
```sql
CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    department VARCHAR(50),
    salary DECIMAL(10,2) DEFAULT 0,
    manager_id INT
);
