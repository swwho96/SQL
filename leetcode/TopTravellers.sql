'''
Write an SQL query to report the distance traveled by each user.
Return the result table ordered by travelled_distance in descending order, 
if two or more users traveled the same distance, order them by their name in ascending order.

1. Rides의 distance를 user별로 합산한다.
2. Users의 id를 기준으로 각 user_id에 맞는 travelled_distance를 조건에 맞는 순서로 정렬하여 출력한다. 
'''


SELECT u.name, IFNULL(sum(r.distance), 0) as travelled_distance
FROM Users u
LEFT JOIN Rides r ON u.id = r.user_id
GROUP BY r.user_id
ORDER BY travelled_distance DESC, name ASC