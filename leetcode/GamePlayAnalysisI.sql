'''
1. player_id와 각 event_date를 출력한다.
2. 각 player_id의 첫 event_date를 출력한다.
'''

SELECT player_id, MIN(event_date) as first_login
FROM Activity
GROUP BY player_id