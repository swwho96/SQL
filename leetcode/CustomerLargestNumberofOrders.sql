'''
1. customer_number 출력
2. order를 가장 많이 한 customer_number를 출력
'''

SELECT customer_number
FROM (
    SELECT customer_number,  RANK() OVER (ORDER BY COUNT(customer_number) DESC) as cn 
    FROM Orders
    GROUP BY customer_number
    )sub
WHERE cn = 1