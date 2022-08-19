--3편 이상(>= 3)의 영화에 출연한 배우들 중에서 영화사 사장인 배우의 이름과 재산을 찾아라.
select m.name, m.netWorth 
from MovieExec m,Studio 
where certNo =presNO And m.name IN
(select starName from StarsIn
Group By starName 
Having count(movieTitle) >=3)
Order by 2 desc;
