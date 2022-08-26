'''
Write an SQL query to find for each user, the join date and the number of orders they made as a buyer in 2019.

1. Orders에서 order_date 기준으로 2019년의 주문 수를 센다.
2. user_id를 기준으로 2019년 주문 수를 출력한다.

'''

SELECT u.user_id as buyer_id, u.join_date, count(o.order_date) as orders_in_2019
FROM Users u
LEFT JOIN Orders o ON u.user_id = o.buyer_id AND YEAR(o.order_date) = 2019
GROUP BY u.user_id