--영화 배우이면서 제작자인 사람들의 평균 수입은 ?
with z as
(select *
from MovieExec me,StarsIn, Movie
where title = movieTitle And year = movieYear And certNo = producerNo And me.name In
(select m.name
from movieStar m,StarsIn
where m.name = starName))

select Avg(netWorth)
from MovieExec
where name In
(select name
from z);