SELECT time, date, status, result_type, request_id, uri, user_agent
FROM cloudfront_logs
WHERE ("status" >= 500)
AND date
BETWEEN date '2021-07-01' AND date '2021-08-13';
