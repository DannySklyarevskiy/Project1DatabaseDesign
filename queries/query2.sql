--This query fulfils the requirement of having a subquery
--The result is a list of printer_id and tons_of_emissions_produced where the tons of emissions produced is above average
--The query is helpful in figuring out which printers are doing the most harm to the environment

SELECT p.printer_id, p.tons_of_emissions_produced
FROM Printer p
WHERE p.tons_of_emissions_produced > (
    SELECT AVG(p2.tons_of_emissions_produced)
    FROM Printer p2
)
ORDER BY p.tons_of_emissions_produced DESC
