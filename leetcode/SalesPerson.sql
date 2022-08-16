'''
Write an SQL query to report the names of all the salespersons who did not have any orders related to the company with the name "RED".
'''

# left join
SELECT s.name FROM SalesPerson s
WHERE s.sales_id NOT IN
    (SELECT o.sales_id FROM Orders o
    LEFT JOIN Company c ON o.com_id = c.com_id
    WHERE c.name = 'RED')
 
 
# subquery
SELECT name from salesperson
where sales_id not in 
(
    select sales_id from orders where com_id in 
	(select com_id from company where name='RED')
)