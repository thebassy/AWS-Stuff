SELECT request_ip, count(1)
FROM cloudfront_logs
GROUP BY  request_ip
ORDER BY 2 desc;
