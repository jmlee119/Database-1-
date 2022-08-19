--가장 많은 개런티를 받은 배우가 출연한 영화중에서 처음으로 출연한 영화와 가장 상영시간이 길었던 영화의 제목과 상영년도는 ?
with z as (
select * from StarsIn,Movie -- 출연한 영화
where title = MovieTItle And year = MovieYear And starName IN (
select starName from StarsIn --개런티 많이 받은 배우 
where gurantee IN
(select max(gurantee) from StarsIn
)))
select z1.title as "처음으로 출연한 영화",z1.year as "처음으로 출연한 영화 상영년도",z2.title"상영시간이 길었던 영화제목",z2.year as "상영시간이 긴 영화의 상영년도"
from z z1, z z2
where (z1.year, z2.length) In
    (select min(year),max(length)
    from z);