--This query fulfils the requirement of joining 3 tables together
--The result shows the id of every shell, the date it was made, and hte address of the factory where it was made
--The query is useful in figuring out which shells were made in which factory

SELECT shell_id, date_produced, address AS factoryAddress
FROM Shell
LEFT JOIN Printer ON Shell.printer_id=Printer.printer_id
LEFT JOIN Factory ON Printer.factory_id=Factory.factory_id
ORDER BY factoryAddress