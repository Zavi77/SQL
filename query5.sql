626. Exchange Seats

# Write your MySQL query statement below

select case when id != counts and id%2 != 0 then id+1
 when id = counts and id%2 != 0 then id
 else id - 1 end as id, student 
from seat, (select count(*) as counts from seat) as seat_counts
order by 1 
