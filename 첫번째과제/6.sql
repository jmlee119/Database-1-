--남자거나 Malibu에 사는(주소에 Malibu가 있는) 모든 스타의 이름과 주소를 찾아라.
select name,address
from MovieStar
where gender = 'male' Or lower(address) Like lower('%Malibu%');