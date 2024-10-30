--> 1
    select bill_total,bill_date from restBill where cust_name = 'Bob Crow';
--> 2
    select cust_name from restBill where cust_name LIKE '%Smith';
--> 3
    select distinct cust_name from restBill where cust_name LIKE '% C%';
--> 4
    select distinct first_name,surname from restStaff where headwaiter = 'NULL';
--> 5
    select distinct * from restBill where bill_date >'160200';
--> 6
    select distinct * from restBill where bill_date >'150000' AND bill_date <"160000" order by bill_date;
