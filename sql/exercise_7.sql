1.display the name ( first name and last name ) for those employees who gets more salary than the employee whose ID is 163.

select
    concat(concat(FIRST_NAME,' '),LAST_NAME) as EMPLOYEE_NAME 
    ,SALARY
from
    EMPLOYEES 
where salary > (select SALARY from employees where EMPLOYEE_ID = 163) 
;

2.display the name ( first name and last name ), salary, department id, job id for those employees who works in the same designation as the employee works 
whose id is 169.

SELECT 
    concat(concat(FIRST_NAME,' '),LAST_NAME) as EMPLOYEE_NAME
    ,SALARY
    ,DEPARTMENT_ID
    ,JOB_ID 
from EMPLOYEES 
where JOB_ID =(select JOB_ID from EMPLOYEES where EMPLOYEE_ID=169)
;

3.display the name ( first name and last name ), salary, department id for those employees who earn such amount of salary which is the smallest salary of any 
of the departments.

select
    concat(concat(FIRST_NAME,' '),LAST_NAME) as EMPLOYEE_NAME
    ,SALARY
    ,DEPARTMENT_ID  
from EMPLOYEES  
where SALARY in (select MIN(SALARY)  
                  from EMPLOYEES  
                  group by DEPARTMENT_ID)
;
 
4.display the employee id, employee name (first name and last name) for all employees who earn more than the average salary.

select 
    EMPLOYEE_ID
    ,concat(concat(FIRST_NAME,' '),LAST_NAME) as EMPLOYEE_NAME  
from
    EMPLOYEES  
where SALARY > (select AVG(SALARY)
                 from EMPLOYEES)
;

5.display the employee name ( first name and last name ), employee id and salary of all employees whose manager is Payam

select 
    concat(concat(FIRST_NAME,' '),LAST_NAME) as EMPLOYEE_NAME
    ,EMPLOYEE_ID
    ,SALARY  
from EMPLOYEES  
where MANAGER_ID = (select EMPLOYEE_ID 
                     from EMPLOYEES  
                     where FIRST_NAME = 'Payam')
;

6.display the department number, name ( first name and last name ), job and department name for all employees in the Finance department.

select
     a.DEPARTMENT_ID
    ,concat(concat(a.FIRST_NAME,' '),a.LAST_NAME) as EMPLOYEE_NAME
    ,a.JOB_ID
    ,b.DEPARTMENT_NAME
from
    EMPLOYEES a
    inner join DEPARTMENTS b on a.DEPARTMENT_ID = b.DEPARTMENT_ID 
    where b.DEPARTMENT_NAME = 'Finance'
;

7.display all the information of the employees whose salary is within the range of smallest salary and 2500.

select
    * 
from 
    EMPLOYEES 
where SALARY  >= (select MIN(SALARY)
                       from EMPLOYEES) and SALARY <= 2500
;

8.display all the information of the employees who does not work in those departments where some employees works whose manager id within the range 100 and 200.

select 
    * 
from EMPLOYEES 
where DEPARTMENT_ID not in (select DEPARTMENT_ID 
                             from DEPARTMENTS 
                            where MANAGER_ID >= 100 and MANAGER_ID < 200)
;

9.display all the information for those employees whose id is any id who earn the second highest salary. 

select 
    * 
from EMPLOYEES 
where EMPLOYEE_ID in (select employee_id 
                      from employees  
                      where salary = (select MAX(salary) 
                                      from employees 
                                      where salary < (select MAX(salary) 
                                                      from employees)
                                     )
                      )
;

10.display the employee name( first name and last name ) and hiredate for all employees in the same department as Clara. Exclude Clara.

select
    FIRST_NAME
    ,LAST_NAME
    ,HIRE_DATE  
from EMPLOYEES  
where DEPARTMENT_ID = (select DEPARTMENT_ID  
                       from EMPLOYEES  
                       where FIRST_NAME = 'Clara')and FIRST_NAME <> 'Clara'
;