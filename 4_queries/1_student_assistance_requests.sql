SELECT
  students.name AS student_name,
  count(assistance_requests.*) AS total_assistance_requests
FROM
  assistance_requests
  JOIN students ON students.id = student_id
WHERE
  students.name = 'Elliot Dickinson'
GROUP BY
  students.id