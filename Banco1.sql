USE bank_cc3mb;
SELECT DISTINCT open_emp_id FROM account;

SELECT fname, lname,name from officer, business where officer.cust_id = business.cust_id;

SELECT account_id,cust_id, avail_balance from account WHERE status = "ACTIVE" AND avail_balance > 2500;

SELECT  account_id,address,fname,lname 
from account,individual,customer 
WHERE account.status = 'ACTIVE' and avail_balance > 2500 
AND account.cust_id = customer.cust_id AND customer.cust_id = individual.cust_id;

SELECT concat(fname )
from employee
where superior_emp_id is not  null and emp_id is not null ;

SELECT concat(fname, " ",lname) 
from employee
where superior_emp_id is  null and emp_id;