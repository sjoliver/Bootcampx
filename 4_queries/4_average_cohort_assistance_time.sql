SELECT
  cohorts.name AS name,
  avg(completed_at - started_at) AS average_assistance_time
FROM
  assistance_requests
  JOIN students on students.id = student_id
  JOIN cohorts ON cohort_id = cohorts.id
GROUP BY
  cohorts.name
ORDER BY
  average_assistance_time;