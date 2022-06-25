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

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (e.emp_no)
	e.emp_no,
    e.first_name,
e.last_name,
	t.title,
	t.from_date,
	t.to_date
INTO unique_titles
FROM employees as e
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
	AND (t.to_date = '9999-01-01')
ORDER BY e.emp_no ASC;

SELECT COUNT(ut.emp_no), t.title
FROM unique_titles as ut
LEFT JOIN titles as t
ON ut.emp_no = t.emp_no
GROUP BY t.title

-- To create a retiring_titles table
SELECT COUNT(ut.emp_no), t.title
INTO retiring_titles
FROM unique_titles as ut
LEFT JOIN titles as t
ON ut.emp_no = t.emp_no
GROUP BY t.title
ORDER BY count DESC;
ORDER BY count DESC;

-- A query to create employees memtorship eligibility
SELECT DISTINCT ON (e.emp_no)
	e.emp_no,
e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
INTO memtorship_eligibility
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
	AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no ASC;
