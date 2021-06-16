185. Department Top Three Salaries

# Write your MySQL query statement below

select d.Name as Department , sub.Name as Employee, sub.Salary as Salary from (select Name,Salary,DepartmentId, Dense_Rank() over (partition by DepartmentId order by Salary Desc) as ranking
from Employee) sub join Department d
on d.Id = sub.DepartmentId
where ranking <4
