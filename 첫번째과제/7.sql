--1995년에 MGM에서 제작된 영화에 출연한 배우들을 찾아라.
select starName From StarsIn, Movie
where year=movieYear AND (title=movieTitle AND lower(studioName) =lower('MGM') AND year=1995);