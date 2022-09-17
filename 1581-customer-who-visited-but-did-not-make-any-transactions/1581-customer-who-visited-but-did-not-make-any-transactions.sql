-- transaction 없이 visit한 횟수
select v.customer_id,  count(customer_id) as count_no_trans
from visits as v
where v.visit_id not in (select t.visit_id from transactions as t)
group by customer_id
