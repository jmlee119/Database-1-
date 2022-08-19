--가장 재산이 많은 감독, 가장 재산이 적은 영화사 사장, 가장 재산이 적은 제작자가 함께 만든 영화의 제목과 상영년도는 ? 
select title, year 
from Movie,Studio
where studioName=name and directorNo IN
(select certNO from MovieExec 
where networth In
(select Max(networth) from Movie, MovieExec
where directorNo=certNo))
INTERSECT
select title, year from Movie, Studio
where studioName=name and producerNo IN
(select certNo from MovieExec
where netWorth 
IN
( select min(netWorth) from Movie, MovieExec
where producerNo=certNo))
INTERSECT
select title, year from Movie, Studio
where studioName=name and presNo 
IN( select certNo from MovieExec
where netWorth 
IN( 
select min(netWorth) from MovieExec, Studio
where presNo=certNo
));