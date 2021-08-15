SELECT * FROM "default"."cloudfront_logs"
WHERE location
LIKE 'DUB%'
AND time_taken > 10;
