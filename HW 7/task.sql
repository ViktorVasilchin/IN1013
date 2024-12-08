    CREATE VIEW samsBills AS
SELECT 
    rs.first_name,
    rs.surname,
    rb.bill_date,
    rb.cust_name,
    rb.bill_total
FROM 
    restStaff rs
JOIN 
    restBill rb ON rs.staff_no = rb.waiter_no
WHERE 
    rs.first_name = 'Sam' AND rs.surname = 'Pitt';





   SELECT * from samsBills where bill_total > 400;
   




   CREATE VIEW roomTotals AS
SELECT 
    rt.room_name,
    SUM(rb.bill_total) AS total_sum
FROM 
    restRest_table rt
JOIN 
    restBill rb ON rt.table_no = rb.table_no;







CREATE VIEW teamTotals AS
SELECT 
    CONCAT(rs.first_name, ' ', rs.surname) AS headwaiter_name,
    SUM(rb.bill_total) AS total_sum
FROM 
    restStaff rs
JOIN 
    restBill rb ON rs.staff_no = rb.waiter_no;