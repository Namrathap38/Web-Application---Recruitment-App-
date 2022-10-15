1.Display job title and average salary of employees using inner join

select
    b.JOB_TITLE
    ,avg(a.SALARY)
from
    EMPLOYEES a
inner join JOBS b on a.JOB_ID = b.JOB_ID
group by JOB_TITLE
;

2.Display country name, city, and department name using inner join.

select
    a.COUNTRY_NAME
    ,b.CITY
    ,c.DEPARTMENT_NAME
from
    COUNTRIES a
inner join LOCATIONS b on a.COUNTRY_ID = b.COUNTRY_ID
inner join DEPARTMENTS c on b.LOCATION_ID = c.LOCATION_ID
;

3.Display employee name, job title, start date, and end date of past jobs of all employees with commission percentage null using inner join. 

select
    concat(concat(a.FIRST_NAME,' '),a.LAST_NAME)
    ,c.JOB_TITLE
    ,b.START_DATE
    ,b.END_DATE
    ,a.COMMISSION_PCT
from
    EMPLOYEES a 
    inner join JOB_HISTORY b on a.EMPLOYEE_ID = b.EMPLOYEE_ID
    inner join JOBS c on b.JOB_ID = c.JOB_ID
;

4.Display department name, manager name, and city using inner join.

select
    a.DEPARTMENT_NAME
    ,concat(concat(b.FIRST_NAME,' '),b.LAST_NAME) as MANAGER_NAME
    ,c.CITY
from
    DEPARTMENTS a
    inner join EMPLOYEES b on a.MANAGER_ID = b.EMPLOYEE_ID
    inner join LOCATIONS c on a.LOCATION_ID = c.LOCATION_ID 
;    
                                    
5.Display last name, job title of employees who have commission percentage and belongs to department 30 using inner join.

select
    a.LAST_NAME
    ,b.JOB_TITLE
    ,a.COMMISSION_PCT
    ,a.DEPARTMENT_ID
from
    EMPLOYEES a
    inner join JOBS b on a.JOB_ID = b.JOB_ID
where a.COMMISSION_PCT is not null
and a.DEPARTMENT_ID = 30
;

6.Display employee name and country in which he is working using inner join.

select
    concat(concat(FIRST_NAME,' '),LAST_NAME)
    ,COUNTRY_NAME
from
    EMPLOYEES 
    inner join DEPARTMENTS on EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID
    inner join LOCATIONS on DEPARTMENTS.LOCATION_ID = LOCATIONS.LOCATION_ID
    inner join COUNTRIES on LOCATIONS.COUNTRY_ID = COUNTRIES.COUNTRY_ID
;

7.Display job title, employee ID, number of days between ending date and starting date for all jobs in department 20 from job history using inner join.

select
    FIRST_NAME
    ,JOB_TITLE
    ,END_DATE - START_DATE
from
    EMPLOYEES 
    inner join DEPARTMENTS on EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID
    inner join JOB_HISTORY on DEPARTMENTS.DEPARTMENT_ID = JOB_HISTORY.DEPARTMENT_ID
    inner join JOBS on JOB_HISTORY.JOB_ID = JOBS.JOB_ID
where DEPARTMENT_ID = 20
;

8.Write a query in SQL to display those employees who contain a letter z to their first name and also display their last name, department, city, and state province
  using inner join.

select
    FIRST_NAME
    ,LAST_NAME
    ,DEPARTMENT_NAME
    ,CITY
    ,STATE_PROVINCE
from
    EMPLOYEES 
    inner join DEPARTMENTS on EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID
    inner join LOCATIONS on DEPARTMENTS.LOCATION_ID = LOCATIONS.LOCATION_ID
where FIRST_NAME like '%z%'
;

9.Write a query in SQL to display all departments including those where does not have any employee using right outer join.

select
    DEPARTMENT_NAME
from
    EMPLOYEES 
    right outer join DEPARTMENTS on EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID
;

10.Write a query in SQL to display the first name, last name, department number and name, for all employees who have or have not any department
   using left outer join.

select
     FIRST_NAME
     ,LAST_NAME
     ,EMPLOYEES.DEPARTMENT_ID
     ,DEPARTMENT_NAME
from
    EMPLOYEES 
    left outer join DEPARTMENTS on EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID
; 
