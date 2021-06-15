184. Department Highest Salary

# Write your MySQL query statement below
select d.Name as Department , sub.Name as Employee, sub.Salary  from Department d
join (select Name, Salary, DepartmentId, rank() over (partition by DepartmentId order by Salary desc) as Num
from Employee) sub 
on sub.DepartmentId = d.Id    
where sub.Num = 1