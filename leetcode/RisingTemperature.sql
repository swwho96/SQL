'''
Write an SQL query to find all dates\' Id with higher temperatures compared to its previous dates (yesterday).
'''

SELECT a.id
FROM Weather a, Weather b
WHERE DATEDIFF(a.recordDate, b.recordDate) = 1 AND a.temperature > b.temperature