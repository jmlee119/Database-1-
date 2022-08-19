--남편은 제작자이고 부인은 배우인 부부들은 ?
select m1.name ,m1.spousename from  movieExec m1,movieStar m2
where m2.spousename = m1.name AND m1.spousename = m2.name AND m1.gender = 'male' And CertNo In
(select producerNo
from MovieExec,movie
where producerNo =CertNo);
