'''
Write an SQL query to report the patient_id, patient_name all conditions of patients who have Type I Diabetes.
Type I Diabetes always starts with DIAB1 prefix

Return the result table in any order.
'''
# LIKE
SELECT patient_id, patient_name, conditions
FROM Patients
WHERE conditions LIKE "DIAB1%" OR conditions LIKE "% DIAB1%"


# REGEXP
SELECT *
FROM Patients
WHERE conditions RLIKE '\\bDIAB1'