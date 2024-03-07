--This query fulfils the requirement of using an advanced query
--The result shows the id, nickname, wehter the shell is artificial and the health status of each crab
--The query is useful in figuring out if there is a relation between the health of the crab and the artificiality of the shell


SELECT Crab.crab_id, nickname, shell_is_artificial, well_being,
CASE 
	WHEN well_being > 60 THEN 'Healthy'
	WHEN well_being BETWEEN 30 AND 60 THEN 'Unwell'
	WHEN well_being BETWEEN 15 AND 30 THEN 'Sick'
	ELSE 'Dying'
END AS 'health_status'
FROM Crab
JOIN SpottedCrab ON Crab.crab_id=SpottedCrab.crab_id