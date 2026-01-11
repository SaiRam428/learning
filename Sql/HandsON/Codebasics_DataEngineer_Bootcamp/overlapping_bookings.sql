-- question: "bookings" table has "room_id", "guest_id", "checkin_date", "checkout_date" columns
-- we need to find the guests whose bookings are overlapped.


-- solution
select 
    b1.room_id, 
    b1.guest_id as guest1_id, 
    b1.checkin_date as guest1_checkin, 
    b1.checkout_date as guest1_checkout, 
    b2.guest_id as guest2_id,
    b2.checkin_date as guest2_checkin, 
    b2.checkout_date as guest2_checkout
from bookings b1
join bookings b2 
on b1.room_id = b2.room_id 
and b1.guest_id <> b2.guest_id
and b1.checkin_date < b2.checkout_date
and b2.checkin_date < b1.checkout_date
where b1.guest_id < b2.guest_id
;