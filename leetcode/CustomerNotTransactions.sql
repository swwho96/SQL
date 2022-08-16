'''
Write an SQL query to find the IDs of the users who visited without making any transactions and the number of times they made these types of visits.

Return the result table sorted in any order
'''

SELECT v.customer_id, COUNT(v.customer_id) AS count_no_trans
FROM Visits AS v
WHERE v.visit_id not in (SELECT visit_id FROM Transactions)
GROUP BY v.customer_id