-- Question
-- There is a table "event_detail" has columns "id", "timestamp", "event_detail". 
-- where id will be having multiple rows, with different timestamps and event_details
-- we need to find latest timestamp ids.



-- solution using window function
select id, timestamp, event_detail from (
    select sq.* , ROW_NUMBER() OVER (partition by id order by timestamp desc) as rn 
    from device_logs sq
) mq 
where rn = 1