--어떤 영화 임원들이 merv griffin보다 부유한가?
select M1.name from MovieExec M1, MovieExec M2
where M1.networth >M2.networth AND M2.name = ('merv griffin');