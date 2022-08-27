'''
Write an SQL query to report all the duplicate emails.

1. 각 email의 개수를 센다.
2. email의 개수가 2 이상인 email을 출력한다.
'''

# HAVING
SELECT email AS Email
FROM Person
GROUP BY email
HAVING COUNT(email) > 1

# SubQuery
SELECT sub.email as Email
FROM (SELECT email, COUNT(*) AS cnt FROM Person GROUP BY email) AS sub
WHERE sub.cnt > 1