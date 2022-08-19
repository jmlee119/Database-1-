--가장 나이가 많은 배우가 출연한 영화들중에서 가장 상영 시간이 긴 영화는 
with z as(
select length, title,starName from movie, starsin
where movietitle = title AND movieyear = year AND tarname 
IN (select name from moviestar
MINUS
select m1.name from moviestar m1, moviestar m2
where m1.birthdate > m2.birthdate))

select title from z
where (starName,length) In
(select starName,Max(length)
from z
group by starName);