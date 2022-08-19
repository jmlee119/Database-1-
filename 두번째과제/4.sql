--영화사 사장이면서 배우이기도 한 제작자는 ? 
select DISTINCT MovieExec.name from MovieExec , Movie, StarsIn, Studio 
where certNO = presNO 
AND certNo = producerNo 
AND starsIn.starName = MovieExec.name;