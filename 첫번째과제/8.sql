--Fox 영화사의 사장 이름을 찾아라.
select MovieExec.name From MovieExec, Studio
where certNo=presNo AND (lower(Studio.name) =lower('Fox'));