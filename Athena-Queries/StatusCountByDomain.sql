SELECT domain_name,
  count(1)
FROM cf_alb_logs
Where elb_status_code = '200'
GROUP BY domain_name
ORDER BY 2 DESC limit 10;
