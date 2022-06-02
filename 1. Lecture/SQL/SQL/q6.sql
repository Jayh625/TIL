# 6. 각 department별로 가장 높은 연봉을 받는 사람의 이름을 출력해주세요.
SELECT name
from instructor
where salary in
	(SELECT max(salary) as max_salary from instructor group by dept_name);