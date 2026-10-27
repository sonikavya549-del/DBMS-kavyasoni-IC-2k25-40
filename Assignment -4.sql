
-- 1.
SELECT COUNT(DISTINCT job_id) AS number_of_jobs
FROM employees;

-- 2.
SELECT SUM(salary) AS total_salary
FROM employees;

-- 3.
SELECT MIN(salary) AS minimum_salary
FROM employees;

-- 4.
SELECT MAX(salary) AS maximum_salary
FROM employees
WHERE job_id = 'IT_PROG';

-- 5.
SELECT AVG(salary) AS average_salary,
       COUNT(*) AS number_of_employees
FROM employees
WHERE department_id = 90;

-- 6.
SELECT MAX(salary) AS highest_salary,
       MIN(salary) AS lowest_salary,
       SUM(salary) AS total_salary,
       AVG(salary) AS average_salary
FROM employees;

-- 7.
SELECT job_id, COUNT(*) AS number_of_employees
FROM employees
GROUP BY job_id;

-- 8.
SELECT MAX(salary) - MIN(salary) AS salary_difference
FROM employees;

-- 9.
SELECT manager_id, MIN(salary) AS lowest_salary
FROM employees
WHERE manager_id IS NOT NULL
GROUP BY manager_id;

-- 10.
SELECT department_id, SUM(salary) AS total_salary
FROM employees
GROUP BY department_id;

-- 11.
SELECT job_id, AVG(salary) AS average_salary
FROM employees
WHERE job_id <> 'IT_PROG'
GROUP BY job_id;

-- 12.
SELECT job_id,
       SUM(salary) AS total_salary,
       MAX(salary) AS maximum_salary,
       MIN(salary) AS minimum_salary,
       AVG(salary) AS average_salary
FROM employees
WHERE department_id = 90
GROUP BY job_id;

-- 13.
SELECT job_id, MAX(salary) AS maximum_salary
FROM employees
GROUP BY job_id
HAVING MAX(salary) >= 4000;

-- 14.
SELECT department_id, AVG(salary) AS average_salary
FROM employees
GROUP BY department_id
HAVING COUNT(*) > 10;
