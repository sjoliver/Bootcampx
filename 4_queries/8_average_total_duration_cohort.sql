SELECT
  avg (total_duration) AS average_total_duration
FROM
  (
    SELECT
      cohorts.name AS cohort,
      sum(completed_at - started_at) AS total_duration
    FROM
      assistance_requests
      JOIN students ON students.id = student_id
      JOIN cohorts ON cohort_id = cohorts.id
    GROUP BY
      cohorts.name
    ORDER BY
      total_duration
  ) AS total_duration;