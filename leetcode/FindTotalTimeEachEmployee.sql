'''
Write an SQL query to calculate the total time in minutes spent by each employee on each day at the office. 
Note that within one day, an employee can enter and leave more than once. The time spent in the office for a single entry is out_time - in_time.

1. 날짜별 in_time과 out_time을 집계한다.
2. 사용자별 (out_time - in_time)을 구해 출력한다.
'''

SELECT event_day as day, emp_id, sum(out_time) - sum(in_time) as total_time
FROM Employees
GROUP BY emp_id, event_day