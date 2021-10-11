SELECT name, email, phone
FROM students
WHERE github IS null
  AND end_date IS NOT null;