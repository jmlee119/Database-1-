--음향 효과를 담당하는 각 영화사들의 이름, 직원수와 해당 영화사 사장의 이름 및 주소는 ?
select s.name,s.empNO, m.name,m.address from movieExec m,Studio s
where certNO = presNO AND s.name IN (
select distinct name from movie,Studio
where soundStudio = name)
;