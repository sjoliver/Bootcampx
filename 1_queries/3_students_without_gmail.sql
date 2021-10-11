SELECT name, id, email, cohort_id
FROM students
WHERE email NOT LIKE '%gmail'
  AND phone IS null;