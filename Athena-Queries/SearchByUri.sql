SELECT
  "request_id", "response_result_type", "status", "uri"
FROM
  cloudfront_logs
WHERE "uri" LIKE '/index.html'
