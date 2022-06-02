# Q1 
SELECT dept_name, salary from instructor WHERE name='kim';

# Q2 
SELECT name from instructor WHERE dept_name LIKE('P%');

# Q3 
SELECT name from instructor WHERE salary>65000;

# Q4 
SELECT name FROM instructor WHERE dept_name='Finance' and salary>70000;

# Q5 
SELECT avg(salary) AS avg_sal FROM instructor WHERE dept_name='Comp. Sci.';

# Q6 
SELECT name, dept_name, salary 
FROM instructor, 
(SELECT max(salary) AS max_salary FROM instructor GROUP BY dept_name) AS i1 
WHERE salary = i1.max_salary GROUP BY dept_name ORDER BY dept_name;

SELECT name, dept_name, salary
FROM instructor
WHERE (dept_name, salary) in 
(SELECT dept_name, max(salary) AS max_salary FROM instructor GROUP BY dept_name) ORDER BY dept_name;