SELECT emp.FIRST_NAME, emp.LAST_NAME, emp.EMPLOYEE_ID, dept.DEPARTMENT_NAME
FROM EMPLOYEES emp
LEFT JOIN DEPARTMENTS dept
ON emp.DEPARTMENT_ID = dept.DEPARTMENT_ID; 

SELECT dep.DEPARTMENT_NAME, COUNT(worker.EMPLOYEE_ID) AS Total_Employees
FROM DEPARTMENTS dep
LEFT JOIN EMPLOYEES worker
ON dep.DEPARTMENT_ID = worker.DEPARTMENT_ID
GROUP BY dep.DEPARTMENT_NAME;

SELECT DISTINCT T.job_title
FROM JOBS T;

SELECT E.first_name, E.last_name, E.employee_id AS ID, E.salary
FROM EMPLOYEES E
WHERE E.salary >= 5000;

SELECT DPT.department_name, LOC.street_address, LOC.postal_code, LOC.City, LOC.STATE_PROVINCE, LOC.COUNTRY_ID
FROM DEPARTMENTS DPT, LOCATIONS LOC
WHERE DPT.location_id = LOC.Location_id;

SELECT MIN(HIRE_DATE)
FROM EMPLOYEES
ORDER BY HIRE_DATE ASC
LIMIT 1;

SELECT T.first_name, T.last_name, T.employee_id, T.hire_date
FROM EMPLOYEES T
WHERE T.hire_date > '2010-01-01' 
ORDER BY 4 DESC;

SELECT AVG(SALARY)
FROM EMPLOYEES;

SELECT department_name
FROM DEPARTMENTS;

SELECT worker.employee_id, worker.first_name, worker.last_name, role.job_title
FROM JOBS role
INNER JOIN EMPLOYEES worker
ON role.job_id = worker.JOB_ID
WHERE role.job_title = 'Sales Representative';