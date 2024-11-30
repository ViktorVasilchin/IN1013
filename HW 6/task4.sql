SELECT DISTINCT r.cust_name
FROM restBill r
JOIN restStaff s ON r.waiter_no = s.staff_no
JOIN restStaff s_headwaiter ON s_waiter.headwaiter = s_headwaiter.staff_no
WHERE r.bill_total > 450.00 AND s_headwaiter.first_name = 'Charles';


SELECT s_headwaiter.first_name, s_headwaiter.surname
FROM restBill bill
JOIN restStaff s_waiter ON bill.waiter_no = s_waiter.staff_no
JOIN restStaff s_headwaiter ON s_waiter.headwaiter = s_headwaiter.staff_no
WHERE bill.cust_name LIKE 'Nerida%' AND bill.bill_date = 160111;


SELECT cust_name
FROM restBill
WHERE bill_total = (SELECT MIN(bill_total) FROM restBill);

SELECT first_name, surname
FROM restStaff
WHERE staff_no NOT IN (SELECT waiter_no FROM restBill);


SELECT distinct r.cust_name, s_headwaiter.first_name, s_headwaiter.surname, rm.room_name
FROM restBill r
JOIN restStaff s_waiter ON r.waiter_no = s_waiter.staff_no
JOIN restStaff s_headwaiter ON s_waiter.headwaiter = s_headwaiter.staff_no
JOIN restRoom_management rm ON rm.headwaiter = s_headwaiter.staff_no
WHERE r.bill_total = (SELECT MAX(bill_total) FROM restBill);
