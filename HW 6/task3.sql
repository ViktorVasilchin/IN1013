SELECT DISTINCT Staff.first_name, Staff.surname
FROM restBill 
JOIN restStaff Staff ON waiter_no = Staff.staff_no
WHERE cust_name = 'Tanya Singh';



Select room_date from restRoom_management JOIN restStaff Staff ON Staff.headwaiter = Staff_no where Staff.first_name = "Charles" and room_name = "Green" and room_date between 160200 and 160300;



select first_name, surname from restStaff where headwaiter = (select headwaiter from restStaff where first_name = "Zoe");



SELECT 
    b.cust_name, 
    b.bill_total, 
    s.first_name, 
    s.surname
FROM restBill b
JOIN restStaff s ON b.waiter_no = s.staff_no
ORDER BY b.bill_total DESC;



SELECT DISTINCT s.first_name, s.surname
FROM restStaff s
JOIN restBill b ON s.staff_no = b.waiter_no
WHERE b.bill_no IN (00014, 00017);



select s.first_name, s.surname from restStaff s JOIN restRoom_management r 
WHERE r.room_name = "Blue" and r.room_date = "160312";
