SELECT cloudfront_logs.time, cloudfront_logs.date, type, client_ip, elb_status_code, request_verb, uri, status, request_id
FROM "default"."cf_alb_logs","default"."cloudfront_logs"
WHERE cf_alb_logs.elb_status_code = '200'
AND status = 502
limit 100;
