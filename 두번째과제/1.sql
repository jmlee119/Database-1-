--각 영화사 별 평균 상영시간, 처음으로 제작한 영화의 상영년도, 제작 영화 수 등을 제작 영화 수의 역순으로 검색하여라.
select studioName, Avg(length), Min(year) ,count(title)
from Movie 
Group BY studioName
Order By Count(title) Desc;