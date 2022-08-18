--1980년에 만들어졌거나 영화 제목에 "and" 또는 "of"가 들어간 영화에 출연한 모든 스타의 이름과 생일을 어린 배우들부터 검색하여라.
SELECT DISTINCT name,birthdate FROM MovieStar, StarsIn
Where name=starName AND (lower(movieTitle) Like '%and%' OR lower(movieTitle) Like '%of%' OR movieYear=1980)
Order by birthdate Desc;