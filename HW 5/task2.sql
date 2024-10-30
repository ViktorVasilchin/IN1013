--> 1
    select SUM(bill_total) AS Income from restBill;
--> 2
    select SUM(bill_total) AS "Feb Income" from restBill where bill_date between 160200 AND 160300;
--> 3
SELECT AVG(bill_total) FROM restBill WHERE table_no = 2;
--> 4
SELECT 
    MIN(no_of_seats) AS Min,
    MAX(no_of_seats) AS Max,
    AVG(no_of_seats) AS Avg
FROM restRest_table
WHERE room_name = 'Blue';
-->5
    select Count(Distinct table_no)  from restBill where waiter_no = '4' or waiter_no = '2';
