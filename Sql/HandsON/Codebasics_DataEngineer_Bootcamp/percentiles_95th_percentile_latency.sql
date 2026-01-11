-- Question: "api_logs" table has 'service_name', 'response_time_ms', 'timestamp' columns
-- need to calculate the 95th percentiles response time for each service.

-- using sub query
select 
    service_name, 
    95th_percentile_response_time_ms from ( SELECT
        service_name,
        round(response_time_ms,2) as 95th_percentile_response_time_ms ,
        ROW_NUMBER() OVER (PARTITION BY service_name ORDER BY response_time_ms) AS rn,
        CEIL(0.95 * COUNT(*) OVER (PARTITION BY service_name)) AS service_count
        FROM api_logs) t
    where rn = service_count;
