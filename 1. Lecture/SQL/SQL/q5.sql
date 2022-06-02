# 5. Computer Science department에 속한 사람들의 평균 연봉을 출력해주세요.
SELECT avg(salary) as avg_salary
from instructor
where dept_name = 'Comp. Sci.';