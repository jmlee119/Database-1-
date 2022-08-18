--Mgm과 Disney 영화사의 주소를 찾아라
SELECT address FROM Studio
Where lower(name)= lower('Mgm') OR  lower(name)=lower('Disney');