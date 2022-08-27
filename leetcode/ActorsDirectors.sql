'''
Write a SQL query for a report that provides the pairs (actor_id, director_id)
where the actor has cooperated with the director at least three times.

1. actor_id별 director_id의 횟수 센다.
2. actor_id별 director_id의 횟수가 3 이상인 (actor_id, director_id)를 출력한다.
'''


SELECT actor_id, director_id
FROM ActorDirector
GROUP BY actor_id, director_id
HAVING COUNT(director_id) >= 3