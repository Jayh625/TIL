# 6. 각 department별로 가장 높은 연봉을 받는 사람의 이름을 출력해주세요. --> subquery
SELECT name, salary
FROM instructor
WHERE (dept_name, salary)
	in 
	(SELECT dept_name, max(salary)
	from instructor
	group by dept_name);