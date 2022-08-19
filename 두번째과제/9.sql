--각 영화사의 영화들을 만든 제작자들의 평균 수입이 1,000,000 이상인 영화사 이름과 제작자들의 수를 제작들 수의 내림차순으로 검색하여라.
select S.name "영화사",count(DISTINCT M.name) "제작자수"
from Movie, MovieExec M, Studio S
where StudioName=S.name and producerNo=certNo
group by S.name
having  1000000 <= avg(netWorth)
order by count(DISTINCT M.name) DESC;