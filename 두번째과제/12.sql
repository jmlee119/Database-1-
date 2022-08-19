 --Harrison Ford가 출연한 영화의 수와 평균 상영 시간은 ? 
 select count(movieTitle), avg(length) from Movie, StarsIn
 where title = movieTitle AND year = movieYear AND
 starName ='harrison ford';