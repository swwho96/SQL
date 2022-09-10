'''
아이디와 이름, 중성화 여부를 아이디 순으로 정렬하여 출력한다.
(단, 중성화 여부는 Neutered, Spayed가 포함된 경우 'O', 그 외에는 'X'이다.)
'''

SELECT ANIMAL_ID, NAME,
CASE WHEN SEX_UPON_INTAKE LIKE "%Neutered%" OR SEX_UPON_INTAKE LIKE "%Spayed%" 
THEN 'O' ELSE 'X' END AS '중성화'
FROM ANIMAL_INS
ORDER BY ANIMAL_ID