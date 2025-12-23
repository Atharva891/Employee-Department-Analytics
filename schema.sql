-- Table creation
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    location VARCHAR(50)
);

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT,
    hire_date DATE,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

CREATE TABLE salaries (
    emp_id INT,
    salary INT,
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);

CREATE TABLE attendance (
    emp_id INT,
    work_date DATE,
    status VARCHAR(10),
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);

