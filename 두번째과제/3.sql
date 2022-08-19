--가장 수입이 많은 제작자(영화를 제작한 적이 있는 영화임원들중에서)와 가장 수입이 적은 영화사 사장(영화사 사장인 영화임원들중에서)이 함께 만든 영화들의 제목과 상영년도는 ?
select title, year from Movie, Studio
where studioName=name and producerNo IN
(select certNo from MovieExec
where netWorth 
IN
( select max(netWorth) from Movie, MovieExec
where producerNo=certNo))
INTERSECT
select title, year from Movie, Studio
where studioName=name and presNo 
IN( select certNo from MovieExec
where netWorth 
IN( 
select min(netWorth) from MovieExec, Studio
where presNo=certNo
));