1.display employees whose name starting with 'G'.

select
    EMPLOYEE_ID
    ,FIRST_NAME
from
    EMPLOYEES
where FIRST_NAME like 'G%'
;

2.display details of employees whose employee id is 118,123,199.

select
    EMPLOYEE_ID
    ,FIRST_NAME
    ,LAST_NAME
    ,EMAIL
from
    EMPLOYEES
where EMPLOYEE_ID in (118,123,199)
;

3.display details of employees who are getting commission_pct.

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

4.display employees whose salary in the range of 5000 to 9000.

select
    EMPLOYEE_ID
    ,FIRST_NAME
    ,LAST_NAME
    ,EMAIL
    ,SALARY
from
    EMPLOYEES
where SALARY>=5000
and SALARY<=9000
;

5.display employees whose name contains  'i'.

select
    EMPLOYEE_ID
    ,FIRST_NAME
    ,EMAIL
    ,SALARY
from
    EMPLOYEES
where FIRST_NAME like '%i%'
;