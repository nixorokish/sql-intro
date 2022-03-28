

-- List all employee first and last names only that live in Calgary.
SELECT * FROM employee
WHERE city = 'Calgary'

-- Find the birthdate for the youngest employee.
SELECT employee_id, first_name, last_name, title, birth_date FROM employee
WHERE birth_date = (SELECT MAX(birth_date) FROM employee);

-- Find the birthdate for the oldest employee.
SELECT employee_id, first_name, last_name, title, birth_date FROM employee
WHERE birth_date = (SELECT MIN(birth_date) FROM employee);

-- Find everyone that reports to Nancy Edwards (use the ReportsTo column).
SELECT employee_id, first_name, last_name, title, reports_to FROM employee
WHERE reports_to = 2;

-- Count how many people live in Lethbridge.
SELECT COUNT(*) FROM employee
WHERE city = 'Lethbridge'