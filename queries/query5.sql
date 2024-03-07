--The result of the query gives average salaries of both scientists and factory workers
--The query helps in seeing which job is more profitable
--Changing avg to sum can help in seeing where more of the company budget is going

SELECT 
(SELECT avg(salary)
FROM Employee
JOIN Scientist on Employee.employee_id=Scientist.scientist_id) AS scientistSalary,
(SELECT avg(salary)
FROM Employee
JOIN FactoryWorker on Employee.employee_id=FactoryWorker.worker_id) AS factoryWorkerSalary;
