1.display details of jobs in the descending order of the title.

select
   JOB_ID
   ,JOB_TITLE
   ,MIN_SALARY
   ,MAX_SALARY
from 
     JOBS
order by JOB_TITLE desc
;

2.display the lowest salary

select
    MIN(SALARY)
from
    EMPLOYEES
;

3.display employee details whose salary is less than 10000 and department_id 40

select
    *
from
    EMPLOYEES
where SALARY<10000 and DEPARTMENT_ID = 40
;

4.display total number of employees

select
    count(EMPLOYEE_ID)
from
    EMPLOYEES
;

5.display the sum of salary of all the employees

select
    sum(SALARY)
from
    EMPLOYEES
;

6.display the avg salary of all employees

select
    avg(SALARY)
from
    EMPLOYEES
;

7.display highest salary

select
    max(SALARY)
from
    EMPLOYEES
;

8.display employee details whose salary is in the range 10000 to 15000 or employee_id is 177

select
    *
from
    EMPLOYEES
where SALARY between 10000 and 15000 or EMPLOYEE_ID = 177
;

9.display employee details who gets commission percentage.

select
    EMPLOYEE_ID
    ,FIRST_NAME
    ,LAST_NAME
    ,EMAIL
    ,COMMISSION_PCT
from
    EMPLOYEES
where COMMISSION_PCT is not null
;

10.display employee details where employee id not 101,127,188

select
    *
from
    EMPLOYEES
where EMPLOYEE_ID not in (101,127,188)
;