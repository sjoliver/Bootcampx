SELECT id, name, email, cohort_id
FROM students
WHERE github IS null
ORDER BY cohort_id;