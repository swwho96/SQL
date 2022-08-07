'''
Write an SQL query to calculate the bonus of each employee. 
The bonus of an employee is 100% of their salary if the ID of the employee is an odd number and the employee name does not start with the character 'M'. 
The bonus of an employee is 0 otherwise.

Return the result table ordered by employee_id.
'''


# CASE TEHN WHEN END
SELECT employee_id,
CASE WHEN employee_id % 2 != 0 AND name not LIKE "M%" THEN salary else 0 END as bonus
FROM Employees
ORDER BY employee_id

# IF
SELECT employee_id, if(employee_id % 2 != 0 AND name not LIKE "M%", salary, 0) as bonus
FROM Employees
ORDER BY employee_id