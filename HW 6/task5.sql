SELECT s.first_name, s.surname, b.bill_date, COUNT(b.bill_no) AS num_bills
FROM restBill b
JOIN restStaff s ON b.waiter_no = s.staff_no
GROUP BY s.first_name, s.surname, b.bill_date
HAVING COUNT(b.bill_no) >= 2;

SELECT t.room_name, COUNT(t.table_no) AS num_tables
FROM restRest_table t
WHERE t.no_of_seats > 6
GROUP BY t.room_name;


SELECT r.room_name, SUM(b.bill_total) AS total_bills
FROM restRoom_management r
JOIN restBill b ON r.room_name = b.table_no
GROUP BY r.room_name;

SELECT hw.first_name AS headwaiter_first_name, hw.surname AS headwaiter_surname, 
       SUM(b.bill_total) AS total_bill_amount
FROM restStaff hw
JOIN restStaff w ON hw.staff_no = w.headwaiter
JOIN restBill b ON w.staff_no = b.waiter_no
GROUP BY hw.staff_no
ORDER BY total_bill_amount DESC;

SELECT cust_name
FROM restBill
GROUP BY cust_name
HAVING AVG(bill_total) > 400;

SELECT s.first_name, s.surname, b.bill_date, COUNT(b.bill_no) AS num_bills
FROM restBill b
JOIN restStaff s ON b.waiter_no = s.staff_no
