'''
Write an SQL query to report the IDs of all the employees with missing information. The information of an employee is missing if:

The employee's name is missing, or
The employee's salary is missing.
Return the result table ordered by employee_id in ascending order.

The query result format is in the following example.
'''

# SubQuery
SELECT employee_id FROM Employees WHERE employee_id not in (SELECT employee_id FROM Salaries)
UNION
SELECT employee_id FROM Salaries WHERE employee_id not in (SELECT employee_id FROM Employees)
ORDER BY employee_id ASC


# JOIN
select  e.employee_id from employees e
left join salaries s
on e.employee_id = s.employee_id
where s.salary is null

UNION

select  s.employee_id from employees e
right join salaries s
on e.employee_id = s.employee_id
where e.name is null

order by employee_id