--Danny DeVito 보다 젊은 여자 배우가 출연한 각 영화들 중에서 가장 긴 상영시간을 가지는 영화의 제목, 상영년도를 이 여자 배우 이름을 포함하여 영화 제목 순으로 검색하여라

select starname, title, year
from movie, starsin
where title = movietitle ANd year = movieyear and
(starname, length) in(select name, max(length)
                        from moviestar , starsin, movie
                        where name = starname AND movietitle = title AND movieyear = year 
                        AND lower(gender) = 'female'
                        AND birthdate > (select birthdate
                                        from moviestar
                                        where lower(name) = 'danny devito')
                        group by name)
             order by lower(title);


with z as (
select * from Movie, StarsIn
where title = movieTitle AND year = movieYear AND
(length, starname) in(select max(length), name
                        from moviestar , starsin, movie
                        where name = starname AND movietitle = title AND movieyear = year 
                        AND lower(gender) = 'female'
                        AND birthdate > (select birthdate
                                        from moviestar
                                        where lower(name) = 'danny devito')
                        group by name))

select starname, title, year from z
order by lower(title);
