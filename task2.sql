-- ============================================
-- Task 2: Data Insertion and Handling NULLs
-- SQL Developer Internship
-- ============================================

DROP TABLE IF EXISTS Employee;

CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    department VARCHAR(50),
    salary DECIMAL(10,2) DEFAULT 0,
    manager_id INT
);

-- INSERT examples
INSERT INTO Employee (emp_id, name, department, salary, manager_id)
VALUES
  (101, 'Alice', 'HR', 50000, NULL),
  (102, 'Bob', 'IT', 60000, 101),
  (103, 'John', 'Sales', 40000, 102);

INSERT INTO Employee (emp_id, name, department, salary, manager_id)
VALUES (104, 'Diana', NULL, 55000, 101);

INSERT INTO Employee (emp_id, name)
VALUES (105, 'Eve');

-- UPDATE examples
UPDATE Employee
SET salary = 65000
WHERE emp_id = 103;

UPDATE Employee
SET department = 'Finance'
WHERE department IS NULL;

-- DELETE examples
DELETE FROM Employee
WHERE emp_id = 105;

-- SELECT final data
SELECT * FROM Employee;
