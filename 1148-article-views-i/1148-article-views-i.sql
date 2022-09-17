# Write your MySQL query statement below
# 자기 자신의 article을 본 author 뽑기
select distinct author_id as id 
from Views
where author_id = viewer_id
order by author_id;