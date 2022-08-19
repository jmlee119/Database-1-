--같은 주소에 사는 배우들이 출연한 영화들의 평균 상영시간과 가장 최근에 출연한 영화의 상영년도는 ?
with z as
(select address "주소",Avg(length) "평균 상영시간", max(year) "최근 개봉년도"
from Movie, MovieStar, StarsIn
where title = movieTitle And year = movieYear And (address, starName) In
(select s1.address, s1.name
from MovieStar s1, MovieStar s2
where s1.address = s2.address And s1.name <> s2.name)
group by address)

select *
from z;