'''
1. user_id와 time_stamp를 출력한다.
2. 2020년 각 user의 마지막 로그인 기록을 출력한다. (2020년에 로그인하지 않은 user는 출력하지 않는다.)
'''

SELECT user_id, MAX(time_stamp) as last_stamp
FROM Logins
WHERE YEAR(time_stamp) = 2020
GROUP BY user_id