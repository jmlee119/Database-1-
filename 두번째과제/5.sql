--영화 Sting에 출연하지 않은 여자 배우들의 이름을 어린 배우 순으로 검색하여라
with z as (
select name
     , birthdate 
  from starsin
     , moviestar
where gender = 'female' 
and name = starname
minus
select name
     , birthdate
 from starsin, moviestar
 where gender = 'female' and name = starname and movietitle = 'sting'
 ) 
select name
from z
order by birthdate desc;