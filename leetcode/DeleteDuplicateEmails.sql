'''
Write an SQL query to delete all the duplicate emails, keeping only one unique email with the smallest id. 
Note that you are supposed to write a DELETE statement and not a SELECT one.
'''

# Please write a DELETE statement and DO NOT write a SELECT statement.
# Write your MySQL query statement below
DELETE p1 FROM Person as p1, Person as p2
WHERE p1.email = p2.email AND p1.id > p2.id