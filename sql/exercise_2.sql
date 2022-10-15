1.display the unique designations for the employees.

select
    EMPLOYEE_ID
    ,concat(concat(FIRST_NAME,' '),LAST_NAME)
    ,SALARY
    ,DEPARTMENT_ID
    ,JOB_ID
from
    EMPLOYEES
; 

2.display emp_name and salary is increased by 100%

select
    EMPLOYEE_ID
    ,concat(concat(FIRST_NAME,' '),LAST_NAME)
    ,SALARY*2
   
from
    EMPLOYEES
;    

3.display all the jobnames .

select
    EMPLOYEE_ID
    ,FIRST_NAME
    ,LAST_NAME
    ,JOB_TITLE
from
    EMPLOYEES
inner join JOBS on EMPLOYEES.JOB_ID = JOBS.JOB_ID
;    

4.display all employees who does not belong to department 60

select
    EMPLOYEE_ID
    ,FIRST_NAME
    ,LAST_NAME
    ,SALARY
    ,EMAIL
    ,DEPARTMENT_ID
from
    EMPLOYEES
where DEPARTMENT_ID not in 60
;    

5.display details of all departments. 

select
    DEPARTMENT_ID
    ,DEPARTMENT_NAME
    ,MANAGER_ID
    ,LOCATION_ID
from
    DEPARTMENTS
;
