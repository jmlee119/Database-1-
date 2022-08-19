--영화감독의 배우자가 배우로 출연한 영화와 이 영화의 감독 및 이 감독의 배우자 이름은 ?
select title, me.Name, me.SpouseName
from MovieExec me, Movie
where DirectorNo = CertNo And title In
(   select Movietitle
    from StarsIn
    where StarName In
        (select Distinct me.spousename
        from MovieExec me, MovieStar ms,Movie
        where me.name = ms.spouseName And ms.Name = me.SpouseName And CertNo = directorNo));