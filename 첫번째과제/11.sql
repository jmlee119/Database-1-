--재산이 제일 많은 영화 임원의 이름과 주소를 찾아라. (집단값 함수인 MAX를 사용하지 말것)
select m1.name ,m1.address from MovieExec m1, MovieExec m2
where m1.netWorth > m2.netWorth
MINUS select m1.name ,m1.address from MovieExec m1, MovieExec m2
where m1.netWorth < m2.netWorth ;