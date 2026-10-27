
-- 1.
SELECT first_name, last_name, salary
FROM employees
WHERE salary > (
    SELECT salary
    FROM employees
    WHERE last_name = 'Bull'
);

-- 2.
SELECT first_name, last_name
FROM employees
WHERE department_id IN (
    SELECT department_id
    FROM departments
    WHERE department_name = 'IT'
);

-- 3.
SELECT first_name, last_name
FROM employees
WHERE manager_id IS NOT NULL
AND department_id IN (
    SELECT department_id
    FROM departments
    WHERE location_id IN (
        SELECT location_id
        FROM locations
        WHERE country_id IN (
            SELECT country_id
            FROM countries
            WHERE country_name = 'United States of America'
        )
    )
);

-- 4.
SELECT first_name, last_name
FROM employees
WHERE employee_id IN (
    SELECT DISTINCT manager_id
    FROM employees
    WHERE manager_id IS NOT NULL
);

-- 5.
SELECT first_name, last_name, salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);

-- 6.
SELECT e.first_name, e.last_name, e.salary
FROM employees e
JOIN job_grades j
ON e.salary BETWEEN j.lowest_sal AND j.highest_sal
WHERE e.salary = j.lowest_sal;

-- 7.
SELECT first_name, last_name, salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
)
AND department_id IN (
    SELECT department_id
    FROM departments
    WHERE department_name = 'IT'
);

-- 8.
SELECT first_name, last_name, salary
FROM employees
WHERE salary > (
    SELECT salary
    FROM employees
    WHERE last_name = 'Bell'
);

-- 9.
SELECT first_name, last_name, salary
FROM employees
WHERE salary IN (
    SELECT MIN(salary)
    FROM employees
    GROUP BY department_id
);

-- 10.
SELECT first_name, last_name, salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);

-- 11.
SELECT first_name, last_name, salary
FROM employees
WHERE salary > ALL (
    SELECT salary
    FROM employees
    WHERE job_id = 'SH_CLERK'
)
ORDER BY salary ASC;

-- 12.
SELECT first_name, last_name
FROM employees
WHERE employee_id NOT IN (
    SELECT manager_id
    FROM employees
    WHERE manager_id IS NOT NULL
);

-- 13.
SELECT e.employee_id, e.first_name, e.last_name,
       d.department_name
FROM employees e
LEFT JOIN departments d
ON e.department_id = d.department_id;

-- 14.
SELECT e.employee_id, e.first_name, e.last_name, e.salary
FROM employees e
WHERE e.salary > (
    SELECT AVG(e2.salary)
    FROM employees e2
    WHERE e2.department_id = e.department_id
);

-- 15.
SELECT *
FROM employees
WHERE MOD(employee_id, 2) = 0;

-- 16.
SELECT DISTINCT salary
FROM employees
ORDER BY salary DESC
LIMIT 1 OFFSET 4;

-- 17.
SELECT DISTINCT salary
FROM employees
ORDER BY salary ASC
LIMIT 1 OFFSET 3;

-- 18.
SELECT *
FROM employees
ORDER BY employee_id DESC
LIMIT 10;

-- 19.
SELECT d.department_id, d.department_name
FROM departments d
WHERE NOT EXISTS (
    SELECT 1
    FROM employees e
    WHERE e.department_id = d.department_id
);

-- 20.
SELECT DISTINCT salary
FROM employees
ORDER BY salary DESC
LIMIT 3;

-- 21.
SELECT DISTINCT salary
FROM employees
ORDER BY salary ASC
LIMIT 3;

-- 22.
SELECT DISTINCT salary
FROM employees
ORDER BY salary DESC
LIMIT 1 OFFSET 4;
