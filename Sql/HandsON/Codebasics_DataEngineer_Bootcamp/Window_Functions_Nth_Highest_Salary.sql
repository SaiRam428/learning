-- Using WindowFunctions
SELECT employee_id, employee_name, department, salary FROM (
    SELECT employee_id, employee_name, department, salary,
            DENSE_RANK() OVER (
               PARTITION BY department
               ORDER BY salary DESC
           ) AS rn
    FROM employee_salaries
)
WHERE rn = 3;

-- Using Subqueries
