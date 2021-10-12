SELECT
  assignments.id AS id,
  assignments.name AS name,
  assignments.day AS DAY,
  chapter,
  count(assistance_requests.*) AS total_requests
FROM assistance_requests
join assignments on assignments.id = assignment_id
GROUP by assignments.id
ORDER by total_requests DESC;