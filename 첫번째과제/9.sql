--Gone with the wind보다 상영시간이 긴 영화를 찾아라.
select M2.title from movie M1, movie M2
where M1.length < M2.length And lower(M1.title) = lower('Gone with the wind');