SELECT
  assignments.day,
  count(assignments) AS number_of_assignments,
  sum(duration)
FROM
  assignments
GROUP BY
  assignments.day
ORDER BY
  assignments.day