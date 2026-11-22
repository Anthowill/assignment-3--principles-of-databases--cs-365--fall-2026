-- 1. Unique names of all faculty members and their departments, ordered by department
SELECT DISTINCT CONCAT(first_name, ' ', last_name) AS `Name`, department AS `Department`
FROM faculty
ORDER BY department, `Name`;

-- 2. Names, department, and office locations of all Computing Sciences faculty, by name
SELECT CONCAT(f.first_name, ' ', f.last_name) AS `Name`,
       f.department AS `Department`,
       CONCAT(r.building, ' ', r.number) AS `Location`
FROM faculty AS f
  INNER JOIN faculty_room AS fr ON fr.email = f.email
  INNER JOIN room AS r ON r.id = fr.room_id
WHERE f.department = 'Computing Sciences'
ORDER BY `Name`;
