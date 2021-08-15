SELECT "sum"("bytes") "total_bytes"
FROM
  cloudfront_logs
WHERE ("date" BETWEEN DATE '2017-06-09' AND DATE '2021-12-31')
LIMIT 100
