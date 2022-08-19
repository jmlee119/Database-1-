--상영 시간이 같은 영화들의 수와 각 상영 시간을 상영 시간의 역순으로 검색하여라.
select count(title) "영화 제목" , length "상영 시간"
from Movie
group by length
having count(title)>1
order by length DESC;