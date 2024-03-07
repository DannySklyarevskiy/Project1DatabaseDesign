--This query fulfils the requirement of using group by and having
--The result shows the number of crabs in eadch species with artificial shells
--Crabs with an insignificant amount of artificial shells (2 or less) are excluded
--The query shows the crab species most susseptable to making their homes shells that aren't good for them

SELECT COUNT(nickname) as crabAmount, species
FROM Crab
JOIN SpottedCrab ON Crab.crab_id=SpottedCrab.crab_id
WHERE (shell_is_artificial='true')
GROUP BY species
HAVING COUNT(nickname) > 2