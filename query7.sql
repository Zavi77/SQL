197. Rising Temperature

# Write your MySQL query statement below

select w.id as Id from Weather w join Weather t on Datediff(w.recordDate, t.recordDate) = 1 and w.Temperature > t.Temperature