delete p1 from Person as p1 join Person as p2
where p1.id > p2.id and p1.email = p2.email;