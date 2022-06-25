-- Use Dictinct with Orderby to remove duplicate rows
SELECT e.emp_no,
    e.first_name,
e.last_name,
	t.title,
	t.from_date,
	t.to_date
INTO ret_emp
FROM employees as e
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no DESC;
