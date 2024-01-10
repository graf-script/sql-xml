-- XMLELEMENT

SELECT e.id, XMLELEMENT("Sal", e.annual_salary) AS "Employee Salary", XMLELEMENT ("Emp", e.full_name) AS "result"
   FROM employees e
   WHERE id > 200;

-- XML STRUCTURE

SELECT XMLELEMENT("Emp", XMLELEMENT("name", e.full_name),
                           XMLELEMENT ( "hiredate", e.hire_date)) AS "result" 
FROM employees e 
WHERE id > 200 ;
