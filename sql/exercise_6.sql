1.Display department name, average salary and number of employees with commission within the department.

select
    DEPARTMENT_NAME
    ,AVG(SALARY)
    ,COUNT(EMPLOYEE_ID)
from
    EMPLOYEES
    inner join DEPARTMENTS on EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID
where
     COMMISSION_PCT is not null
 group by DEPARTMENT_NAME;

2.Write a query in SQL to display the department name, city, and state province for each department.

select
    DEPARTMENT_NAME
    ,CITY
    ,STATE_PROVINCE
from
    DEPARTMENTS
    inner join LOCATIONS on DEPARTMENTS.LOCATION_ID = LOCATIONS.LOCATION_ID
;    

3.Write a query in SQL to display the name of the country, city, and the departments which are running there.

select
    COUNTRY_NAME
    ,CITY
    ,DEPARTMENT_NAME
from
    DEPARTMENTS
    inner join LOCATIONS on DEPARTMENTS.LOCATION_ID = LOCATIONS.LOCATION_ID
    inner join COUNTRIES on LOCATIONS.COUNTRY_ID = COUNTRIES.COUNTRY_ID
;    

4.Write a query in SQL to display the details of jobs which was done by any of the employees who is presently earning a salary on and above 12000.

select
    J.JOB_ID
    ,JOB_TITLE
from
    EMPLOYEES
        inner join JOB_HISTORY on EMPLOYEES.JOB_ID = JOB_HISTORY.JOB_ID
        inner join JOBS J on JOB_HISTORY.JOB_ID = J.JOB_ID
where SALARY>=12000
;

5.Write a query in SQL to display the department name, full name (first and last name) of manager, and their city.

select
    DEPARTMENT_NAME
    ,concat(concat(FIRST_NAME,' '),LAST_NAME)
    ,CITY
from
    EMPLOYEES
    inner join DEPARTMENTS on EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID
    inner join LOCATIONS on DEPARTMENTS.LOCATION_ID = LOCATIONS.LOCATION_ID
;    

6.Write a query in SQL to display the full name (first and last name), and salary of those employees who working in any department located in London.
   
select
    concat(concat(FIRST_NAME,' '),LAST_NAME) AS EMPLOYEE_NAME
    ,SALARY
from
    EMPLOYEES  
    inner join DEPARTMENTS on EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID
    inner join LOCATIONS on DEPARTMENTS.LOCATION_ID = LOCATIONS.LOCATION_ID
where
    CITY = 'London';

7.Write a query in SQL to display the department name, department ID, and number of employees in each of the department.

select
    DEPARTMENT_NAME
    ,EMP.DEPARTMENT_ID
    ,COUNT(EMPLOYEE_ID)
from
    EMPLOYEES EMP 
   inner join DEPARTMENTS DEP on EMP.DEPARTMENT_ID = DEP.DEPARTMENT_ID
   group by DEPARTMENT_NAME,EMP.DEPARTMENT_ID;

8.Display job title, employee name, and the difference between maximum salary for the job and salary of the employee.

select
    JOB_TITLE
    ,concat(concat(FIRST_NAME,' '),LAST_NAME) as EMPLOYEE_NAME
    ,MAX_SALARY - SALARY AS DIFFERENCE
from
    EMPLOYEES 
    inner join JOBS on EMPLOYEES.JOB_ID = JOBS.JOB_ID;

9.Display Manager Name and Employee Name.

select
    concat(concat(a.FIRST_NAME,' '),a.LAST_NAME)  as MANAGER_NAME 
    ,concat(concat(b.FIRST_NAME,' '),b.LAST_NAME)  as EMPLOYEE_NAME
from
    EMPLOYEES b
    inner join EMPLOYEES a on b.MANAGER_ID = a.EMPLOYEE_ID
 ;  

10. Display Second Highest Salary

select
    a.SALARY
from
    EMPLOYEES a
where 2-1 = (select count(distinct SALARY) from EMPLOYEES b where b.SALARY>a.SALARY)
;

----------OR---------

select
    MAX(SALARY)
from 
    EMPLOYEES
where   
    SALARY < (select MAX(SALARY) from EMPLOYEES)
;        