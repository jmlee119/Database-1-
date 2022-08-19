--Fox' 영화사의 각 영화에 출연한 배우들의 평균 개런티 액수와 영화이름은 ?
select avg(gurantee) , title
from Movie, StarsIn
where lower(studioName) = 'fox' AND title = movieTitle AND year = movieYear
group by title;
