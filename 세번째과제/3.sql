--Fox' 영화사의 각 영화에 출연한 배우들의 평균 개런티 액수와 영화이름은 ?
select count(title), avg(length) from Movie ,MovieExec
where certNo = DIRECTORNO
group  by name;