 --1970년 이전에 태어난 "California"에 사는(주소에 California가 있는) 여자배우가 출연한 영화 제목, 상영시간, 영화제작자 이름을 상영시간의 역순, 상영시간이 같은 경우 영화 제목순으로 검색하여라.
 select title,length,me.name
from Movie,StarsIn,MovieStar ms,MovieExec me
where title = movieTitle AND year = movieYear and starName = ms.name
And producerNo = certNo AND ms.birthdate <'1970-01-01' AND lower(ms.address)
Like lower('%California%') AND ms.gender = 'female'
order by length DESC, title;