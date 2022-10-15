1. display employee details whose salary is 2600

select
    EMPLOYEE_ID
    ,SALARY
    ,FIRST_NAME
from
    EMPLOYEES
where SALARY in 2600
;    

2. display employee details whose salary is less than 2600

select
    EMPLOYEE_ID
    ,SALARY
    ,FIRST_NAME
from
    EMPLOYEES
where SALARY < 2600
;    

3. display employee details whose salary is greater than 2600

select
    EMPLOYEE_ID
    ,SALARY
    ,FIRST_NAME
from
    EMPLOYEES
where SALARY > 2600
;   
 
4. display employee details whose department_id is 60

select
    EMPLOYEE_ID
    ,SALARY
    ,FIRST_NAME
    ,DEPARTMENT_ID
from
    EMPLOYEES
where DEPARTMENT_ID in 60
;    

5. display fullname of all the employees

select
    EMPLOYEE_ID
    ,concat(concat(FIRST_NAME,' '),LAST_NAME)
    ,SALARY
    ,DEPARTMENT_ID
from
    EMPLOYEES
;    
