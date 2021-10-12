SELECT
  teachers.name AS teacher_name,
  count(assistance_requests.*) AS total_assistance_requests
FROM
  assistance_requests
  JOIN teachers ON teachers.id = teacher_id
WHERE
  name = 'Waylon Boehm'
GROUP BY
  teachers.id