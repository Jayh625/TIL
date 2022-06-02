# 4. Finance department에 속한 사람중에 salary가 70000이 넘는 사람의 이름을 출력해주세요.
SELECT name
from instructor
where dept_name = 'Finance' and salary > 70000;
