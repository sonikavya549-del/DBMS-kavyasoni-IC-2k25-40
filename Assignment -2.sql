-- 1.
SELECT first_name AS 'First Name',
       last_name AS 'Last Name'
FROM employees;

-- 2.
SELECT DISTINCT department_id
FROM employees;

-- 3.
SELECT *
FROM employees
ORDER BY first_name DESC;

-- 4.
SELECT first_name, last_name, salary,
       salary * 0.15 AS PF
FROM employees;

-- 5.
SELECT employee_id, first_name, last_name, salary
FROM employees
ORDER BY salary ASC;

-- 6.
SELECT SUM(salary) AS total_salary
FROM employees;

-- 7.
SELECT MAX(salary) AS maximum_salary,
       MIN(salary) AS minimum_salary
FROM employees;

-- 8.
SELECT AVG(salary) AS average_salary,
       COUNT(*) AS number_of_employees
FROM employees;

-- 9.
SELECT COUNT(*) AS total_employees
FROM employees;

-- 10.
SELECT COUNT(DISTINCT job_id) AS number_of_jobs
FROM employees;

-- 11.
SELECT UPPER(first_name) AS first_name
FROM employees;

-- 12.
SELECT SUBSTRING(first_name, 1, 3) AS first_three_characters
FROM employees;

-- 13.
SELECT 171 * 214 + 625 AS result;

-- 14.
SELECT CONCAT(first_name, ' ', last_name) AS employee_name
FROM employees;

-- 15.
SELECT TRIM(first_name) AS first_name
FROM employees;

-- 16.
SELECT first_name, last_name,
       LENGTH(first_name) AS first_name_length,
       LENGTH(last_name) AS last_name_length
FROM employees;

-- 17.
SELECT first_name
FROM employees
WHERE first_name REGEXP '[0-9]';

-- 18.
SELECT *
FROM employees
LIMIT 10;

-- 19.
SELECT employee_id, first_name, last_name,
       ROUND(salary / 12, 2) AS monthly_salary
FROM employees;
