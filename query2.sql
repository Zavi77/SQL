178. Rank Scores

select Score, Dense_Rank() over (order by Score desc) as 'Rank' from Scores