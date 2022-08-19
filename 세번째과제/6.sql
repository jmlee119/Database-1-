--서로 생년월일이 같은 배우와 제작자들은 ?
select me1.name
from movieexec me1, movie, movieexec me2
where me1.birthdate = me2.birthdate AND me1.name <> me2.name
group by me1.name, me1.birthdate
    union
select ms1.name
from moviestar ms1, moviestar ms2
where ms1.birthdate = ms2.birthdate AND ms1.name <> ms2.name
group by ms1.name, ms1.birthdate;