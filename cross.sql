-- Active: 1733932584439@@127.0.0.1@5432@ph@public
CREATE TABLE employees (
    emp_id INT,
    emp_name VARCHAR(50),
    dept_id INT
);

CREATE TABLE department(
    dept_id INT,
    dept_name VARCHAR (50)
);

INSERT INTO employees VALUES(1, 'Jhon Doe', 101);

INSERT INTO employees VALUES(2, 'Jane Smith', 102);

INSERT INTO department VALUES(101, 'Human Resources');
INSERT INTO department VALUES(102, 'Marketing');

SELECT * FROM employees;

SELECT * FROM department;


-- cross join
SELECT * FROM employees CROSS JOIN department;

-- natural join
SELECT * FROM employees NATURAL JOIN department;