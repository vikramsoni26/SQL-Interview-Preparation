use company;
-- 1. Count employees department-wise
SELECT department, count(*)
from employees
GROUP BY department;

-- 2. Total salary department-wise
select department, SUM(Salary)
from employees
group by department;

-- 3. Average salary department-wise
select department, Avg(Salary)
from employees
group by department;

-- 4. Highest salary in each department
select department, max(Salary)
from employees
group by department;

-- 5. Departments having more than 2 employees
select department, count(*)
from employees
group by department
having count(*) > 2;

-- 6. Highest department salary first
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department
ORDER BY total_salary DESC;

-- 7. Aggregate Alias Example
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department;

-- REAL QA TESTING SQL QUERIES

-- Q1. Find duplicate employee names
SELECT emp_name, COUNT(*)
FROM employees
GROUP BY emp_name
HAVING COUNT(*) > 1;

-- Q2. Count employees city-wise
SELECT city, COUNT(*)
FROM employees
GROUP BY city;

-- Q3. Find highest salary employee
SELECT *
FROM employees
WHERE salary = (
   SELECT MAX(salary)
   FROM employees
);

-- Q4. Total employees in Testing department
SELECT COUNT(*)
FROM employees
WHERE department='TESTING';

-- Q3. Can we use WHERE and HAVING together?
SELECT department, COUNT(*)
FROM employees
WHERE salary > 30000
GROUP BY department
HAVING COUNT(*) > 1;

-- 1 Count employees department-wise
SELECT department, COUNT(*)
FROM employees
GROUP BY department;

-- 2 Average salary department-wise
SELECT department, AVG(salary)
FROM employees
GROUP BY department;

-- 3 Highest salary in each department
SELECT department, MAX(salary)
FROM employees
GROUP BY department;

-- 4 Departments having more than 2 employees
SELECT department, COUNT(*)
FROM employees
GROUP BY department
HAVING COUNT(*) > 2;

-- 5 Count employees city-wise
SELECT city, COUNT(*)
FROM employees
GROUP BY city;

-- 6 Find highest salary employee
SELECT *
FROM employees
WHERE salary = (
   SELECT MAX(salary)
   FROM employees
);

