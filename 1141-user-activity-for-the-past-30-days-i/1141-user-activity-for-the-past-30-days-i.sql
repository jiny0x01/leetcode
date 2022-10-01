# Write your MySQL query statement below
#PK 없고 중복 존재
# activity_type (enum: open_session, end_session, scroll_down, send_message)
# 2019-07-27부터 30일 전 동안 활성 유저 찾기

select activity_date as day, count(distinct user_id) as active_users
from Activity
where activity_date between '2019-06-28' and '2019-07-27'
group by activity_date