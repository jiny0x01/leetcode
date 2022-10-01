# Write your MySQL query statement below
# 각각의 date_id와 make_name은 중복 제거한 lead_id 수와 partner_id를 리턴
select date_id, make_name, COUNT(distinct lead_id) as unique_leads, COUNT(distinct partner_id) as unique_partners
from DailySales
group by date_id, make_name